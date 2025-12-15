## Test Types Implemented

### 1. Functional Test

**Purpose:**  
Verify that core application functionality works correctly.

**Test Implemented:**  
- Health endpoint returns a valid response

**Details:**  
- Endpoint: `/health`
- Expected Status Code: `200`
- Expected Response Body:
  ```json
  {
    "status": "healthy"
  }

**Test File:**
- tests/test_functional_health.py

### 2. Smoke Test

**Purpose:**  
Quickly verify that the application starts and responds to basic requests.

**Test Implemented:**  
- Root endpoint responds successfully

**Details:**  
- Endpoint: `/`
- Expected Status Code: `200`

**Test File:**
- tests/test_smoke.py