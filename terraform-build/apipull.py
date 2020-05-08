
import requests
import json
import time

#source
url = 'https://api.worldtradingdata.com/api/v1/stock'

params = {
    'symbol': 'SNAP',
    'api_token': 'RZAWSCH082rp9EpBTIl2DK4FZoSfRaVE4aiP3YXD8HAPHHJjO4wnhauezrWk'
    }

#api producer
counter = 0
datalst = []
while counter != 1:
    try:
        response = requests.request('GET', url, params=params)
        tojson = response.json()
        jsondata = tojson.pop("data")
        print(jsondata)
        datalst.append(jsondata)
        counter += 1
        print(len(datalst))
        time.sleep(1)
        #write to s3
        
    except:
        print("something happended to the api pull")
        break

    #json.jsondecoder(*,)
    #file just to veiw
    
    with open('/Users/Caleb/Bigdatagit/Terraform-aws-pipeline/terraform-build/data.json', 'a') as f:
        for data in datalst:
            f.write("\n")
            json.dump(data, f, ensure_ascii='utf-8')
    



