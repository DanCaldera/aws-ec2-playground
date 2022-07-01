from flask import Flask
from 
app = Flask(__name__)

ALLOWED_EXTENSIONS = {'aac', 'mp3', 'ogg', 'midi', 'mpeg', 'wav'}

@app.route('/')
def hello():
    return '<h1>Bienvenido al convertidor de audios de MisFans!</h1>'

@app.route('/convert')
def convert_audio():
    return '<h1>Converter</h1>'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=3000)
