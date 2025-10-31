
FROM python:3.13-slim
RUN pip install streamlit
RUN mkdir /myapp
WORKDIR /myapp
COPY etl.py .
EXPOSE 8501
CMD ["streamlit", "run", "etl.py"]
