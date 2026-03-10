from pydantic import BaseModel, Json

class JsonResponse(BaseModel):
    response: Json[str]