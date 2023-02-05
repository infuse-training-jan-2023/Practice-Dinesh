import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/password.feature')

add_item_url = "http://172.17.12.94:5002/password"
item = {"password" : "Dinesh@123"}
@when('I send the password')
def add_password():
    pytest.api_response = requests.post(add_item_url,json=item)
    print(pytest.api_response)

@then('api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'
