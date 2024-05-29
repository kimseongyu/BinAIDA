#include "llvm/Pass.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/IRBuilder.h"

#include <cstring>
#include <iostream>
#include <fstream>

using namespace llvm;
using namespace std;

namespace
{
  struct GetInfo : public PassInfoMixin<GetInfo>
  {
    GetInfo(std::string typeName, std::string fileName): 
      typeName(typeName), fileName(fileName) {}

    PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM)
    {

      ofstream fs(fileName);

      LLVMContext &Context = M.getContext();
      StructType *MaskType = StructType::create(Context, typeName);
      MaskType->setBody(Type::getInt32Ty(Context));
      Type *Mask = MaskType;

      for (Function &F : M)
      {
        std::string str;
        raw_string_ostream rso(str);

        rso << "Function: " << F.getName() << "\n";

        rso << "Arguments:\n";

        for (auto &Arg : F.args())
        {
          Arg.mutateType(Mask);

          rso << Arg << "\n";
        }

        rso << "Instructions:\n";

        for (auto &BB : F)
        {
          for (auto &I : BB)
          {
            
            if (auto *Alloca = dyn_cast<AllocaInst>(&I))
            {
              Alloca->setAllocatedType(MaskType);
            }
            else if (auto *Load = dyn_cast<LoadInst>(&I))
            {
              Load->mutateType(Mask);
            }
            else if (auto *Store = dyn_cast<StoreInst>(&I))
            {
              IRBuilder<> Builder(&I);
              Value *StoredValue = Store->getOperand(0);
              StoredValue->mutateType(Mask);
              Store->setOperand(0, StoredValue);
            }
            else if (auto *Sext = dyn_cast<SExtInst>(&I))
            {
              Sext->mutateType(Mask);
            }
            rso << I << "\n";
          }
        }
        rso.flush();
        fs << str << "\n";
      } 
      fs.close();
      return PreservedAnalyses::all();
    }
    private:
      std::string typeName;
      std::string fileName;
  };
}

llvm::PassPluginLibraryInfo getPluginInfo()
{
  return {
      LLVM_PLUGIN_API_VERSION, "Get Information Pass", LLVM_VERSION_STRING,
      [](PassBuilder &PB)
      {
        PB.registerPipelineParsingCallback(
            [](
                StringRef Name, ModulePassManager &MPM, ArrayRef<PassBuilder::PipelineElement> Args)
            {
              if (Name == "getInfo")
              {
                std::string typeName = "Mask";
                std::string fileName = "File.txt";

                if(Args.size() > 0){
                  typeName = Args[0].Name.str();
                  fileName = Args[1].Name.str();
                }
                
                MPM.addPass(GetInfo(typeName, fileName));
                return true;
              }
              return false;
            });
      }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo()
{
  return getPluginInfo();
}