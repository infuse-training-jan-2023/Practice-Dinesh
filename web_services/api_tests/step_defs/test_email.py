import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/email.feature')

add_item_url = "http://127.0.0.1:5001/email"
item = {"email" : "dinesh@123.com"}
@when('I send the email')
def add_email():
    pytest.api_response = requests.post(add_item_url,json=item)
    print(pytest.api_response)

@then('api status code should be 200')
def check_api_status():
    assert pytest.api_response.status_code == 200

@then('api response content type should be application/json')
def check_api_content_type():
    assert pytest.api_response.headers['content-Type'] == 'application/json'
