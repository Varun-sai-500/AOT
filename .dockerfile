FROM nvidia/cuda:12.8.1-cudnn-devel-ubuntu24.04

WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    git \
    ffmpeg \
    libgl1 \
    libglib2.0-0 \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN python3 -m pip install --upgrade pip setuptools wheel
RUN python3 -m pip install -e .

CMD ["/bin/bash"]