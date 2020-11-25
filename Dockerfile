FROM python:3.6.5
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN rm -f ./requirements.txt
COPY ./src .
COPY ./config /etc/mtc/
ENTRYPOINT ["python", "./run.py"]