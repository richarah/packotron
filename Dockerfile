# Adjust to taste
FROM python:3.9

WORKDIR /app
COPY ./app /app

# Generate requirements.txt using pipreqs
RUN pip install pipreqs
RUN pipreqs .
RUN pip install -r requirements.txt

# Packaging
RUN pip install pyinstaller
CMD pyinstaller --onefile /app/app.py
