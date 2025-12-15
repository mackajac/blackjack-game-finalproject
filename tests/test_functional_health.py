from app import app

def test_health_endpoint_functional():
    """
    Functional test: test health.
    """
    with app.test_client() as client:
        response = client.get("/health")
        assert response.status_code == 200
        data = response.get_json()
        assert data["status"] == "healthy"