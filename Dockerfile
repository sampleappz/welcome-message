FROM python:3.10
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["fastapi", "run", "--workers" ,"4", "main.py"]
