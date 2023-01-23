# -*- coding: utf-8 -*-
"""
@author: 
"""

# Load Modules


import warnings
warnings.filterwarnings('ignore')

# server related
from fastapi import FastAPI


app = FastAPI(version='v1.0', title="Super User on MFLOW",
			  description="<b>API for retrieving super user for particular requester</b></br></br>")

#uvicorn run:app --host 0.0.0.0 --port 5050

@app.get("/")
def home():    
    return {'type': 'AISI Management API Testing'}

