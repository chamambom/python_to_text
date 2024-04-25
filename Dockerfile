FROM python:2.7-alpine

ADD . /app
WORKDIR /app

# Update pip
RUN pip install --upgrade pip

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=app.py
CMD ["flask", "run", "--host", "0.0.0.0"]