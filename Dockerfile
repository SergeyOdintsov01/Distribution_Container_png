FROM python:latest

WORKDIR /src/

COPY ./src ./

COPY ./requirements.txt ./

RUN pip install -no-chache-dir -r requirements.txt

CMD [ "python", "./plot.py" ]