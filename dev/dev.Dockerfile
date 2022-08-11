FROM python:3.9

ENV PYTHONUNBUFFERED=1
COPY src .

ENTRYPOINT ["python", "cli.py"]