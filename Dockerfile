# Use the official lightweight Python image.
FROM python:3.8-slim
#Allow statements and log
ENV PYTHONUNBUFFERED True
# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./
#RUN #set -xe \
#    && apt-get install python3-pip
# Install production dependencies.
RUN pip install -r requirements.txt
# Run
CMD ["python3", "main.py"]