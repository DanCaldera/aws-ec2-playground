from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_flask():
    return '<h1>Hola desde Python!</h1>'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=3000)
