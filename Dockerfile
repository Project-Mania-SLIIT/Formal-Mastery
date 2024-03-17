# Use the official Python image as a base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Copy the CSV file into the container at /app
COPY info_noun.csv /app/info_noun.csv
COPY verb_list.csv /app/verb_list.csv
COPY wsd_irst_attempt_Mixed.csv /app/wsd_irst_attempt_Mixed.csv
COPY wsd_irst_attempt.csv /app/wsd_irst_attempt.csv
COPY wsd_irst_Mixed_noverb.csv /app/sd_irst_Mixed_noverb.csv
COPY wsd_verbs.csv /app/wsd_verbs.csv


# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
