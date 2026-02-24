# MLOps Dockerized ML Pipeline Project

## Overview

This project demonstrates a complete **MLOps pipeline** that:

- Processes a CSV dataset  
- Computes metrics (e.g., `signal_rate`)  
- Outputs results as a JSON file  
- Is fully containerized using **Docker** for reproducible deployment  

This project is designed to be **easy to run** both locally and via Docker.

---

## Project Structure


mlops-task/
├── run.py
├── Dockerfile
├── requirements.txt
├── config.yaml
├── data.csv
├── metrics.json
├── run.log
├── MLOps_Dockerized_ML_Pipeline_Project.pdf
└── README.md


---

## Requirements

- Python 3.9+
- Docker
- Git

---

## Running Locally

Install Python dependencies:

```bash
pip install -r requirements.txt

Run the pipeline:

python run.py --input data.csv --config config.yaml --output metrics.json --log-file run.log

Sample output:

{
  "version": "v1",
  "rows_processed": 10000,
  "metric": "signal_rate",
  "value": 0.4990,
  "latency_ms": 127,
  "seed": 42,
  "status": "success"
}
Running with Docker

Build the Docker image:

docker build -t mlops-task .

Run the container:

docker run mlops-task

Pull the image from Docker Hub:

docker pull sahanad14/mlops-task:final
Docker Hub Link

Docker Image: sahanad14/mlops-task

Summary

This project provides a fully Dockerized ML pipeline that:

Processes CSV input data

Computes metrics for ML monitoring

Outputs results in JSON format

Provides reproducible results via Docker

The project is ideal for demonstrating MLOps workflow, Dockerization, and reproducible ML pipelines.

Author

Sahana D
