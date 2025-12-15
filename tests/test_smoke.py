from app import app

def test_app_starts_smoke():
    """
    Smoke test: verify the app starts and responds.
    """
    with app.test_client() as client:
        response = client.get("/")
        assert response.status_code == 200