Find full repo here: https://github.com/rjhoppe/python-fastapi-docker-env

```
FROM python:3.10-slim
ENV LANG=C.UTF-8

WORKDIR /code

COPY ./requirements.txt ./
RUN : \ 
    && pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]
```
