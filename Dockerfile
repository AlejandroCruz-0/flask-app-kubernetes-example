FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000


COPY . .

CMD [ "flask", "--app", "main", "run","--host=0.0.0.0" ]