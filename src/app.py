from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/rahul-details")
def getDetails():
    host_name = socket.gethostname()
    host_ip = socket.gethostbyname(host_name)
    return jsonify(
        HostName=host_name,
        IpAddress=host_ip
    )
@app.route("/api-health")
def health():
    return jsonify(
        status="UP"
    )
if __name__ == '__main__':
      app.run(debug=True,host='0.0.0.0', port=5000)
