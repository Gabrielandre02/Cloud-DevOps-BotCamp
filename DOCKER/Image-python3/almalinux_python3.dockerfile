FROM almalinux

RUN yum update -y && yum install -y python3 vim
RUN yum clean all

COPY app.py /opt/app.py

CMD [ "python3 /opt/app.py" ]