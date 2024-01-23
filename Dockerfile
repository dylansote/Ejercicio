FROM python:3
WORKDIR /Act
COPY ./Act /Act
CMD ["python3", "hola.py"]