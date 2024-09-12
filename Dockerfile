FROM python:3.9-slim
 
WORKDIR /book_catalog
 
COPY book_catalog/requirements.txt /book_catalog/requirements.txt
 
RUN pip install --no-cache-dir -r requirements.txt
 
COPY book_catalog /book_catalog
 
EXPOSE 8000
 
ENV DATABASE_URL="postgresql://task6_2_fjbo_user:nBzJsU5Rg6qtkHbd28OzAVLmGggvErOz@dpg-crhahhlsvqrc738ahjh0-a.oregon-postgres.render.com:5432/task6_2_fjboc"
 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
