FROM ubuntu:latest

RUN apt-get update && apt-get install -y sudo wget vim curl gawk make gcc apt-utils python3-pip

ARG DOCKER_UID=1000
ARG DOCKER_USER=docuser
ARG DOCKER_PASSWD=docuser
RUN useradd -m --uid ${DOCKER_UID} \
               --groups sudo ${DOCKER_USER} \
               && echo ${DOCKER_USER}:${DOCKER_PASSWD} | chpasswd
#USER ${DOCKER_USER}

RUN pip install --upgrade pip
RUN pip install pandas_datareader
RUN pip install jupyter
RUN pip install jupyterlab

RUN mkdir /workspace

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
