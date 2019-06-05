FROM ubuntu:latest 
RUN apt-get update && apt-get install -y python3 \ python3-pip 
RUN pip3 install jupyter
WORKDIR /home/jupyter
COPY  /src/jupyter ./
EXPOSE 8888
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]
