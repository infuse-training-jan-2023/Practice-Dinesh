import sys
sys.path.append('../')
from src.ex03 import validate
from requests import HTTPError
import requests

def test_validate_id(mocker):
    todo_id = 1
    mocker.patch('ex03.validate', return_value = [])
    resp= validate(todo_id)
    print(validate(todo_id))
    assert resp.status == "200 OK"

def test_validate_wrong_id(mocker):
    todo_id = 201
    mocker.patch('ex03.validate', return_value = [])
    resp= validate(todo_id)
    assert resp.status == "400 BAD REQUEST"
