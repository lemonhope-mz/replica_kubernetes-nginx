from flask import Flask
import socket
hostname=socket.gethostname()
app = Flask(__name__)
​
​
@app.route("/")
def index():
        return ('%s' %(str(hostname)))
​
​
if __name__ == "__main__":
        app.run(port=8080)
