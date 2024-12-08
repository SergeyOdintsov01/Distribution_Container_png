FROM python:latest
WORKDIR /app
COPY ./src/ ./
RUN mkdir -p /app/src/output
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "./plot.py"]
