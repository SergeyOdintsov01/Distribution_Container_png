FROM python:latest

WORKDIR /src/

COPY ./src ./

CMD [ "python", "./plot.py" ]