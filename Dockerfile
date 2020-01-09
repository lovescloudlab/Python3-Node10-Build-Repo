FROM python:3.7-alpine

ENV LANG C.UTF-8

RUN apk add bash && \
apk add git && \
apk add zip unzip && \
pip3 install --upgrade pip && \
apk add --no-cache gcc python-dev musl-dev && \
pip --disable-pip-version-check install \
boto3 botocore awscli aws-sam-cli && \
apk add --no-cache npm && \
apk -v --purge --no-cache del gcc python-dev musl-dev

CMD ["/bin/bash"]
