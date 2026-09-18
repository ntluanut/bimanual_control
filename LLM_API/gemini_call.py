from google import genai
import json
import os

print("start")

API_KEY = os.environ.get("GEMINI_API_KEY")
print("recieve key")
client = genai.Client(api_key=API_KEY)
print("client created")

with open("tools.json") as f:
    TOOLS = json.load(f)
print("call gemini")
interaction = client.interactions.create(
    model="gemini-3.6-flash",
    input="pick up the bottle in front of left robot the coordinates is 0.55 0.35 0.35 and 1 0 0 0 orientation",
    tools=TOOLS
)
print("receive")
fc_step = None
for step in interaction.steps:
    if step.type == "function_call":
        fc_step = step
        break

if fc_step:
    with open("gemini_result.json", "w") as out:
        json.dump(fc_step.arguments, out)
