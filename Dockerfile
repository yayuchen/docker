FROM python:3.8-slim-buster

ENV LISTEN_PORT=5000
EXPOSE 5000

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]