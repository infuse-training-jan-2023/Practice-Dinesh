# import sys
# sys.path.append('../')
from src.ex02 import validate
from requests import HTTPError
import requests

def test_validate_short_password(mocker):
    password="abcd"
    mocker.patch('ex02.validate', return_value = [])
    resp= validate(password)
    print(validate(password))
    assert resp.status == "400 BAD REQUEST"

def test_validate_valid_password(mocker):
    password="Dinesh@123alhdskla"
    mocker.patch('ex02.validate', return_value = [])
    resp= validate(password)
    assert resp.status == "200 OK"

def test_validate_case_password(mocker):
    password="dineshgawas"
    mocker.patch('ex02.validate', return_value = [])
    resp= validate(password)
    assert resp.status == "400 BAD REQUEST"

def test_validate_spcl_char_password(mocker):
    password="Dineshgawas"
    mocker.patch('ex02.validate', return_value = [])
    resp= validate(password)
    assert resp.status == "400 BAD REQUEST"


