#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo ".env file not found"
    exit 1
fi

# Your script logic here
echo "Environment variables loaded successfully."

uv run streamlit run app_home.py