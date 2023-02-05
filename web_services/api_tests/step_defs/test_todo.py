import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/todo.feature')

add_item_url = "http://172.17.12.94:5003/todo/3"
@when('I send the number')
def add_email():
    pytest.api_response = requests.get(add_item_url)
    print(pytest.api_response)

@then('api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'
