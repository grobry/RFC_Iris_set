FROM python:3.11-slim

WORKDIR /app



COPY requirements.txt .
RUN apt-get update && apt-get install -y build-essential redis-server
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["/usr/local/bin/python3","-u","app.py"]
