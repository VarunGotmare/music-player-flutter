
from fastapi import FastAPI
from database import engine, db
from models.base import Base
from routes.auth import router as auth_router

app = FastAPI()
app.include_router(auth_router,prefix="/auth")
Base.metadata.create_all(bind=engine)