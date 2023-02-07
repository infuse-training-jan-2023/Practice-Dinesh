from src.item_repository import ItemRepository
item_repo = ItemRepository()

def test_del_item(mocker):
    mock = mocker.patch('src.item_repository.ItemRepository.delete_item',return_value = {"msg":"item deleted successfully"})
    result = mock(4)
    assert result == ({"msg":"item deleted successfully"})

def test_del_item(mocker):
    mock = mocker.patch('src.item_repository.ItemRepository.delete_item',return_value = [])
    result = mock(4)
    assert result != ({"msg":"item deleted successfully"})