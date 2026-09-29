from google import genai
import json
import os

print("start")

API_KEY = os.environ.get("GEMINI_API_KEY")
print("recieved key")
client = genai.Client(api_key=API_KEY)
print("client created")

with open("tools.json") as f:
    TOOLS = json.load(f)
print("call gemini")
interaction = client.interactions.create(
    model="gemini-3.6-flash",
    input="pick up the black cylinder in front of left robot",
    tools=TOOLS
)
print("received")
fc_step = None
for step in interaction.steps:
    if step.type == "function_call":
        fc_step = step
        break

if fc_step:
    with open("gemini_result.json", "w") as out:
        json.dump(fc_step.arguments, out)

