import uuid
import bcrypt
from fastapi import Depends, HTTPException
from models.user import User
from pydantic_schemas.user_create import UserCreate
from database import  get_db
from sqlalchemy.orm import Session
from fastapi import APIRouter

router = APIRouter()

@router.post("/signup")
async def signup_user(user: UserCreate,db: Session = Depends(get_db)):
    user_db = db.query(User).filter(User.email == user.email).first()
    #if user already exists
    if user_db:
       #http error
       raise HTTPException(status_code=400, detail="User already exists")

    hashed_pw = bcrypt.hashpw(user.password.encode('utf-8'), bcrypt.gensalt())
    user_db = User(id=str(uuid.uuid4), name=user.username, email=user.email, password=hashed_pw)
    db.add(user_db) 
    db.commit()
    return user_db
