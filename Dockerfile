FROM python:3.8.5

WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN python3 -m pip install --no-cache -r requirements.txt

COPY . .

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
#CMD ["gunicorn", "run_app:app", "-b", "0.0.0.0:5000", "-w", "1", "--log-level=debug"]