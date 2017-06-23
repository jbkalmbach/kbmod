################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/GeneratorPSF.cpp \
../src/RawImage.cpp \
../src/RawImage_test.cpp \
../src/kbmod.cpp 

CU_SRCS += \
../src/kernels.cu 

CU_DEPS += \
./src/kernels.d 

OBJS += \
./src/GeneratorPSF.o \
./src/RawImage.o \
./src/RawImage_test.o \
./src/kbmod.o \
./src/kernels.o 

CPP_DEPS += \
./src/GeneratorPSF.d \
./src/RawImage.d \
./src/RawImage_test.d \
./src/kbmod.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I"/home/kbmod-usr/cuda-workspace/kbmod/code/kbmodGPU/include" -I/usr/local/cuda-8.0/samples/common/inc -O3 -Xcompiler -fopenmp -std=c++11 -gencode arch=compute_60,code=sm_60  -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I"/home/kbmod-usr/cuda-workspace/kbmod/code/kbmodGPU/include" -I/usr/local/cuda-8.0/samples/common/inc -O3 -Xcompiler -fopenmp -std=c++11 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I"/home/kbmod-usr/cuda-workspace/kbmod/code/kbmodGPU/include" -I/usr/local/cuda-8.0/samples/common/inc -O3 -Xcompiler -fopenmp -std=c++11 -gencode arch=compute_60,code=sm_60  -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I"/home/kbmod-usr/cuda-workspace/kbmod/code/kbmodGPU/include" -I/usr/local/cuda-8.0/samples/common/inc -O3 -Xcompiler -fopenmp -std=c++11 --compile --relocatable-device-code=false -gencode arch=compute_60,code=compute_60 -gencode arch=compute_60,code=sm_60  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

