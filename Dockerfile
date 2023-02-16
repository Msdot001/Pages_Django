# Pull base image
FROM python:3.10.4-slim-bullseye
# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory      "the working directoty is /code because our directory name is code "
WORKDIR /code    
# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt
# Copy project
COPY . .