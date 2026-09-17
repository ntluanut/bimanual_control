from google import genai
import base64,json

with open("tools.json","r",encoding = "utf-8") as tool:
        TOOLS = json.load(tool)

client = genai.Client()

interaction = client.interactions.create(
    model="gemini-3.8-flash",
    input="pick up the bottle in front of left robot",
    tools = TOOLS
)
print(interaction.output_text)