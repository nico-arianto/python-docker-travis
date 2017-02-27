from django.http import HttpResponse
from website.polls.views import index


def test_index(mocker):
    request = mocker.patch('django.http.HttpRequest')
    response = mocker.patch.object(HttpResponse, '__new__')
    assert index(request) is not None
    response.assert_called_once_with(HttpResponse, "Hello, world. You're at the polls index.")
