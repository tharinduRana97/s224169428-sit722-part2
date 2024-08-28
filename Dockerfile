# Dockerfile for book_catalog microservice
FROM python:3.11-slim

WORKDIR /app

COPY book_catalog/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY book_catalog/ .

ENV DATABASE_URL="postgresql://s224169428_sit722_part2_g4nm_user:wGfMJ2U23A4AUUJU3VdLIWiy54sp4NcI@dpg-cr77u5bv2p9s73e9jef0-a.oregon-postgres.render.com/s224169428_sit722_part2_g4nm?sslmode=require"


EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

