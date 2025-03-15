from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    app.logger.info("Houston, we have a %s", "interesting problem", exc_info=1)
    return "<p>Hello, World!</p>"


if __name__ == "__main__":
    app.run(host="0.0.0.0")
