FROM alpine/helm:3.2.4
FROM bitnami/kubectl:1.16.3
FROM amazon/aws-cli:latest

RUN aws --version
RUN kubectl version 2&>1 | grep Client
RUN helm version 2&>1 | grep Client

CMD [ "aws --version ; kubectl version 2&>1 | grep Client ; helm version 2&>1 | grep Client" ]