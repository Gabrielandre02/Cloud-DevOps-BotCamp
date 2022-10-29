FROM python

WORKDIR /usr/src/app

COPY app-2.py /usr/src/app/

CMD [ "python", "./app.py"]