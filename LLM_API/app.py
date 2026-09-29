from flask import Flask ,render_template,request
from google import genai
import base64,json

with open("tools.json","r",encoding = "utf-8") as tool:
        TOOLS = json.load(tool)

moving_function = {
    "type": "function",
    "name": "move_arm",
    "description": "move arm to make a pose"

}

client = genai.Client()

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/input', methods=["POST"])
def input():
    data = request.get_json()
    audio_input = data["audio"]

    LLM_input = client.interactions.create(
    model="gemini-3.8-flash",
    input="Hello",
    tools = TOOLS,
    )
    print(LLM_input.output_text)

    return "OK"



if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)