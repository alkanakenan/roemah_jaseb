FROM python:3.9

RUN git clone -b Master https://github.com/alkanakenan/Roemahjaseb /home/Kazuuserbot/

RUN chmod 777 /home/Kazuuserbot

COPY ./sample_config.env /home/Kazuuserbot/config.env

WORKDIR /home/Kazuuserbot/

RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt


ENTRYPOINT ["python3", "main.py"]
