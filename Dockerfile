FROM python:3.8-buster

COPY . /automation-test

WORKDIR /automation-test

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN [ "python", "./test.py" ]

CMD tail -f /dev/null
