# Use Python 3.6 or later as a base image
FROM python:3.9
# Copy contents into image
COPY . .
# Install pip dependencies from requirements
RUN RUN pip3 install -r requirements.txt
# Set environment variable
ENV lbg.test.py
# Expose the correct port
EXPOSE 8080
# Create an entrypoint
ENTRYPOINT ["python3", "lbg.py"]
