FROM python:3.7

WORKDIR /code

COPY . /code

RUN pip install pipenv && \
    pipenv install

EXPOSE 5000

CMD ["pipenv", "run", "python", "app.py"]