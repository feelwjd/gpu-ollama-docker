# ollama 기반 이미지 사용
FROM ollama/ollama

# 필요한 패키지 설치
RUN apt update && apt upgrade -y

# Ollama 설치
# RUN ollama pull llama3

# 환경 변수 설정
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility
ENV CUDA_ENABLE_TENSOR_CORES 240

# Ollama 실행 명령
EXPOSE 11434
ENV PORT=11434
ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]
