FROM python:3.10

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
WORKDIR /app
COPY . /app

CMD ["python", "scripts/run_step.py"]
