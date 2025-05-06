#!/usr/bin/env bash
# ==================================================================== #
# Written by: Manu M. on 2023                                          #
# Purpose: Generate a basic template for data science projects         #
# Instructions: Execute using >source initialize.sh                    #
# ==================================================================== #
currentPath=$(pwd)
activatePath="/.venv/bin/activate"
echo "************** Initialize project template **************"
python -m venv .venv
source ${currentPath}${activatePath}
python -m pip install fastapi uvicorn reflex requests python-dotenv
python -m pip install ipykernel nbformat pytest black
python -m pip install pandas seaborn plotly great_tables
python -m pip install scikit-learn statsmodels shap
python -m pip install --upgrade pip
python -m pip freeze > requirements.txt
echo -e ".venv\n.env\n__pycache__" > .gitignore
echo "# README" > README.md
mkdir -p data/{raw,baking,final}
mkdir notebooks src app api img docs
touch .env docker-compose.yml main.tf
echo "******************* Template finished *******************"