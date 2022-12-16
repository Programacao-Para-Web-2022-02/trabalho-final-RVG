from typing import Union

from fastapi import FastAPI
from pydantic import BaseModel
from banco import SQL


app = FastAPI()

class Rating(BaseModel):
    level: int
    idmovie: int
    iduser: int

@app.post ("/rating")
def add_rating(rating: Rating):
    comando = f"INSERT INTO t_rating(level_rating, id_user_rating, id_movie) VALUES ({rating.level}, {rating.iduser}, {rating.idmovie})"
    
    db = SQL()

    db.executar(comando)
    
    return rating

@app.get('/rating/{id_movie}')
def index(id_movie: int):
    db = SQL()
    comando = f"Select AVG(level_rating) from t_rating where id_movie = {id_movie} GROUP BY id_movie"
    cs = db.consultar(comando, [])
    return { "rating" : cs.fetchone()[0] }