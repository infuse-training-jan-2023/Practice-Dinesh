from src.item_repository import ItemRepository
items = [
    (7, 'cook', 'Not Started', 1)
    ]

item_repo = ItemRepository()

def test_del_item_makes_db_call(mocker):
    mock = mocker.patch('src.item_repository.ItemRepository.delete_item',return_value = [])
    _ = item_repo.delete_item()
    assert mock.call_count == 1

def test_del_item(mocker):
    mock = mocker.patch('src.item_repository.ItemRepository.delete_item', return_value = items)
    item_returned = item_repo.delete_item()
    for i, item in enumerate(item_returned):
        assert item == items[i]