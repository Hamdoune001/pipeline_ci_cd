# Dockerfile
FROM python:3.8-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install pylint

# Exécute les tests automatiquement à l'exécution du conteneur
CMD ["python", "-m", "unittest", "discover"]
