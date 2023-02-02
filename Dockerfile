FROM python:3.6
COPY . .
RUN pip3 install -r requirements.txt
RUN python3.6 manage.py makemigrations
RUN python3.6 manage.py migrate
ENTRYPOINT python3.6 manage.py runserver 0.0.0.0:8000
