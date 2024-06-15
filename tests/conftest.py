import pytest
from fastapi.testclient import TestClient


@pytest.fixture
def client():
    from db_management_api.app import app

    return TestClient(app)
