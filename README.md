# Flutter Meterological Project (FMP)

Project to accomplish activity SISTEMAS MOVEIS 05B-2026/1 from my university:
Unimar.

## Proposal

The proposal is quite simple: just a weather app that when plaed a city's name
it will send a request to the application's server to make validation,
and then send a request to the actual forecast api.

- User registration.
- Validate registration.
- Store information in app's backend.
- Login.
- Search for weather of requested city in weather api.
- Show to user the weather.

Simple as that.

## Tools

### Backend

1. Python
	- FastApi (server)
	- pydantic (data validator)

### Frontend

1. Dart
	- Flutter

## How to Run

1. Running the client
	- Run the `flutter run` command
	- Select `[2]: Chrome (chrome)`
2. Running the server
	- Run the `python3 -m pip install -r requirements.txtx` command to install
	the server's dependencies
	- Run the `python3 -m fastapi run` command to run the fast api production server