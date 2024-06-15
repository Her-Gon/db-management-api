from fastapi import FastAPI

APP_NAME = "postgres-manager-api"

app = FastAPI(title="Database Manager API", description="API for postgres management")


# TODO Add Prometheus


@app.get("/")
def root():
    return {"status": "ok"}
