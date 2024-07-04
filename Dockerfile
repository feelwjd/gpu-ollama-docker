# NVIDIA CUDA 기반 이미지 사용
FROM nvidia/cuda:12.5.0-devel-ubuntu22.04

# 필요한 패키지 설치
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Ollama 설치
RUN pip3 install ollama

# 환경 변수 설정
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV CUDA_ENABLE_TENSOR_CORES 240

# Ollama 실행 명령
CMD ["ollama", "start"]