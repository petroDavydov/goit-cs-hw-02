FROM python:3.10

ENV directory=/app

WORKDIR $directory

COPY . .

RUN pip install -r requirements.txt


EXPOSE 8000

ENTRYPOINT [ "python", "main.py" ]

