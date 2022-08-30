FROM python:3.8-slim-buster
WORKDIR /python-docker
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY src src
ENV FLASK_APP ./src/app.py
EXPOSE 9001
ENTRYPOINT ["python", "-m", "flask", "run", "--host=0.0.0.0"]
