from urllib import request
import json

xkcdUrl="http://xkcd.com/info.0.json"

data = request.urlopen(xkcdUrl)
print(data.read())
jsonObject= json.loads(data.read().decode())

request.urlretrieve(jsonObject["img"], "00000001.jpg")

