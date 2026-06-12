FROM ghcr.io/subnet112/solver-base:v1
ENV MINOTAUR_ENABLE_EXTRA_INTERMEDIARIES=1

COPY requirements.txt /app/solver/requirements.txt
RUN pip install --no-cache-dir -r /app/solver/requirements.txt

COPY . /app/solver/
WORKDIR /app/solver
