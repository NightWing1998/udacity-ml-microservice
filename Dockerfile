FROM python:3.7.2-stretch

## Step 1:
# Create a working directory
WORKDIR /usr/src/app/
## Step 2:
# Copy source code to working directory
COPY app.py requirements.txt LICENSE ./
COPY ./model_data ./model_data

RUN ls

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
	pip install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python3", "app.py" ]
