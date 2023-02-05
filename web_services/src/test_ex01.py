# import sys
# sys.path.append('../')
from src.ex01 import validate
from requests import HTTPError
import requests
def test_validate_valid_email(mocker):
    email="abc@gmail.com"
    mock=mocker.patch('ex01.validate', return_value = [])
    resp= validate(email)
    assert resp.status == "200 OK"

def test_validate_wrong_email(mocker):
    email="abcmailcom"
    mock=mocker.patch('ex01.validate', return_value = [])
    resp= validate(email)
    print(validate(email))
    assert resp.status == "400 BAD REQUEST"