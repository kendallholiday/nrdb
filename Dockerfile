FROM ubuntu:latest
RUN apt-get -y update && apt-get -y install git software-properties-common 
RUN apt-get -y install python3.9 python3-pip net-tools nginx 
RUN git clone https://github.com/TrawfazzzMosowski/gitlab_nrdb.git
WORKDIR /gitlab_nrdb
RUN python3 setup.py install 
RUN pip install -r requirements.txt
EXPOSE 5001
ENTRYPOINT ["python3"]
CMD ["main.py"]
