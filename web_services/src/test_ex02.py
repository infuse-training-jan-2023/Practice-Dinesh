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
    assert resp == "Password must be at least 8 characters long."

def test_validate_valid_password(mocker):
    password="Dinesh@123alhdskla"
    mocker.patch('ex02.validate', return_value = [])
    resp= validate(password)
    assert resp == "valid"

def test_validate_case_password(mocker):
    password="dineshgawas"
    mocker.patch('ex02.validate', return_value = [])
    resp= validate(password)
    assert resp == "Password must contain both lowercase and uppercase letters."

def test_validate_spcl_char_password(mocker):
    password="Dineshgawas"
    mocker.patch('ex02.validate', return_value = [])
    resp= validate(password)
    assert resp == "Password must contain at least one special character."


