import json
import requests

response = requests.get('https://zenquotes.io/api/random')

if response.status_code == requests.codes.ok:
    print(f"{response.json()[0]['q']}")
    print(f"- {response.json()[0]['a']}")

