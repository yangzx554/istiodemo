FROM python:2-onbuild

WORKDIR /opt/microservices
COPY app.py /opt/microservices/

EXPOSE 5000

ARG service_version
ENV SERVICE_VERSION ${service_version:-v1}

WORKDIR /opt/microservices
CMD ["python", "app.py"]
