from flask import Flask, request, redirect
from pydub import AudioSegment

app = Flask(__name__)
app.secret_key = "super secret key"

ALLOWED_EXTENSIONS = {'aac', 'mp3', 'ogg', 'midi', 'mpeg', 'wav'}
UPLOAD_FOLDER = '/'


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.route('/', methods=['GET', 'POST'])
def upload_file():
    if request.method == 'POST':
        # check if the post request has the file part
        if 'file' not in request.files:
            print('No file part')
            return redirect('/')

        file = request.files['file']

        if file.filename == '':
            print('No selected file')
            return redirect('/')
        elif file and allowed_file(file.filename):
            file.save(file.filename)
            return redirect('/')
        else:
            print('File type not allowed')
            return redirect('/')
    return '''
    <!doctype html>
    <body style="background-color:black;">
        <title">Audio Conversor</title>
        <h1 style="color:white;">Audio Conversor</h1>
        <form method=post enctype=multipart/form-data>
        <input type=file name=file>
        <input type=submit value=Upload>
        </form>
    </body>
    '''


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=3000)
