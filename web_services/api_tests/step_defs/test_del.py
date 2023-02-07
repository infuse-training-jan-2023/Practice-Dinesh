import pytest 
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/delete_item.feature')

get_a_item_url = "http://127.0.0.1:5000/items/del/2"

@when('I delete a item')
def get_a_item():
    pytest.api_response = requests.post(get_a_item_url)

@then('item should be deleted')
def check_item_returned():
    body = pytest.api_response.json()
    print(type(body))
    assert type(body) == dict

@then('the api status code should be 200')
def check_status_code():
    assert pytest.api_response.status_code == 200

@then('the api response should be json')
def check_response_is_json():
    assert pytest.api_response.headers['content-type'] == 'application/json'


