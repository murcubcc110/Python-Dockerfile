FROM ubuntu:latest

RUN apt-get update && apt-get install -y sudo wget vim curl gawk make gcc pip

RUN pip install --upgrade pip
RUN pip install pandas_datareader
RUN pip install jupyter
RUN pip install jupyterlab

RUN mkdir /workspace

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]

