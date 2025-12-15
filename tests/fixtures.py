# VALID DATA (Happy Path)

VALID_HEALTH_RESPONSE = {
    "status": "healthy",
    "environment": "development"
}

VALID_ROOT_RESPONSE_TEXT = "Blackjack CI/CD application is running"

# INVALID DATA (Error Cases)

INVALID_ENDPOINT = "/does-not-exist"

# EDGE CASES (Boundary)

EDGE_EMPTY_PATH = ""
EDGE_ROOT_PATH = "/"
