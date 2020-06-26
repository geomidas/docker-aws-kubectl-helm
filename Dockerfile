FROM bitnami/kubectl:1.16.3
FROM justinrlee/helm3:latest
FROM amazon/aws-cli:latest

RUN aws --version

CMD [ "aws --version" ]