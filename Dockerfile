FROM python:3.7
ENV FLASK_APP app/run.py
ENV FLASK_ENV development
COPY requirement .
RUN pip3 install -r requirement
COPY . . 
EXPOSE 5000
ENTRYPOINT ["/usr/local/bin/flask", "run", "--host=0.0.0.0"]
