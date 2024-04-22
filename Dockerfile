FROM python:3.10

WORKDIR /root
COPY ./api.py /root
COPY ./requirements.txt /root
COPY ./init.sh /root

RUN pip3 install  -i https://mirrors.aliyun.com/pypi/simple/  --trusted-host mirrors.aliyun.com  -r requirements.txt --no-cache-dir
ENTRYPOINT ["bash","init.sh"]


