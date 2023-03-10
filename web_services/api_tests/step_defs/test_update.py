import pytest 
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/update_item.feature')

update_a_item_url = "http://127.0.0.1:5000/items/3"
item = {"item":"post","status":"started"}

@when('I update a item')
def get_a_item():
    pytest.api_response = requests.put(update_a_item_url,json=item)

@then('item should be updated')
def check_item_returned():
    body = pytest.api_response.json()
    print(type(body))
    assert type(body) == dict

@then('the api status code should be 201')
def check_status_code():
    assert pytest.api_response.status_code == 201

@then('the api response should be json')
def check_response_is_json():
    assert pytest.api_response.headers['content-type'] == 'application/json'


