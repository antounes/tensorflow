# Writing the Dockerfile
FROM gcr.io/deeplearting-platform-release/tf2-cpu

COPY . /code

WORKDIR /code

ENTRYPOINT ["python3", "-m", "trainer.task"]
