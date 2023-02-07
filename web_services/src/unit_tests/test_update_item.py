from src.item_repository import ItemRepository
items = [
    (7, 'cook', 'Started', 1)
    ]

item_repo = ItemRepository()

def test_update_item_makes_db_call(mocker):
    id = 4
    mock = mocker.patch('src.item_repository.ItemRepository.update_item',return_value = {'Message': f' item {id} updated successfully'})
    result = mock(id)
    assert result == ({'Message': f' item {id} updated successfully'})


def test_update_item(mocker):
    id = 'x'
    mock = mocker.patch('src.item_repository.ItemRepository.update_item',return_value = [])
    result = mock(id)
    assert result != ({'Message': f' item {id} updated successfully'})
