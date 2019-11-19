FROM nvidia/cuda:9.0-cudnn7-devel

LABEL Name=cryptpythoncode Version=0.0.1

WORKDIR /app
ADD . /app

RUN apt update -y \
    && apt install -y \
    make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

# Set up pyenv
ENV HOME /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/bin:$PATH
ENV PATH $PYENV_ROOT/shims:$PATH
RUN git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc && \
    eval "$(pyenv init -)" 

RUN CFLAGS=-I/usr/include \
    LDFLAGS=-L/usr/lib \
    CONFIGURE_OPTS="--enable-shared" pyenv install -v 3.6.9 && \
    pyenv global 3.6.9 

COPY ./sampleCode/HelloTensorflow.py ./
COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./docker_entry.sh ./
RUN chmod +x ./docker_entry.sh
ENTRYPOINT ./docker_entry.sh 
