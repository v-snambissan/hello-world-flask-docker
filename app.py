from flask import Flask
app = Flask(__name__)

@app.route('/hello')
def hello():
    return "Hello, World from Container!"

@app.route('/action/health')
def health():
    return "Healthy", 200 

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
