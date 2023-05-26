# Use Python 3.6 or later as a base image
FROM python:3.6
# Copy contents into image
COPY . .
# Install pip dependencies from requirements
RUN pip3 install -r requirements.txt
apt-get update && \
apt-get install -y python3 && \
apt-get install -y python3-pip && \
# Set environment variable
ENV lbg.test.py
# Expose the correct port
EXPOSE 8000
# Create an entrypoint
ENTRYPOINT ["python3", "Python.py"]
