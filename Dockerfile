FROM python:3.8-slim

WORKDIR /app

RUN pip install flask

ENV message='hello world'

# not running pip install since no deps

COPY . .

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
