#include "llvm/Pass.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/IRBuilder.h"

using namespace llvm;

namespace
{
  struct GetInfo : public PassInfoMixin<GetInfo>
  {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM)
    {
      LLVMContext &Context = M.getContext();
      StructType *MaskType = StructType::create(Context, "Mask");
      MaskType->setBody(Type::getInt32Ty(Context));
      Type *Mask = MaskType;

      for (Function &F : M)
      {
        errs() << "Function: " << F.getName() << "\n";
        for (auto &BB : F)
        {
          for (auto &I : BB)
          {
            // alloca를 기반으로 다른 instruction의 type을 추측할 수 있지 않을까?
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
            errs() << I << "\n";
          }
        }
      }
      return PreservedAnalyses::all();
    }
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
                StringRef Name, ModulePassManager &MPM, ArrayRef<PassBuilder::PipelineElement>)
            {
              if (Name == "getInfo")
              {
                MPM.addPass(GetInfo());
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