import pytest 
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/get_a_item.feature')

get_a_item_url = "http://127.0.0.1:5000/items/1"

@when('I search for a item')
def get_a_item():
    pytest.api_response = requests.get(get_a_item_url)

@then('I should get a item')
def check_item_returned():
    body = pytest.api_response.json()
    for item in body:
        assert type(item) == dict

@then('the api status code should be 200')
def check_status_code():
    assert pytest.api_response.status_code == 200

@then('the api response should be json')
def check_response_is_json():
    assert pytest.api_response.headers['content-type'] == 'application/json'


