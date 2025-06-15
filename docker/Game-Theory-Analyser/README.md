# Game Theory Analyser with Flask

## Quick Start
### Option 1: Build the Docker image
1. **Build the Docker image** :
    ```bash
    docker build -t game-theory-analyser .
    ```

2. **Run the Docker container** :
    ```bash
    docker run -p 5050:5050 game-theory-analyser
    ```

3. **Access the application** :
    ```
    http://localhost:5050
    ```

### Option 2: Run the Docker container directly

1. **Run the Docker container** :
    ```bash
    docker run -p 5050:5050 domenez/game-theory-analyser:1.3-RELEASE
    ```

## Stop the Docker container :
  ```bash
  docker stop game-theory-analyser
  ```
