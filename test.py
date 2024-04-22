import requests


def backend_requests_post(url, json):
    headers = {'Connection': 'close'}
    response = requests.post(url=url, json=json, headers=headers)
    json_data = response.json()
    return json_data


server = '127.0.0.1:7860'


ret = backend_requests_post(url=f'http://{server}/api/lunar', json={
    'year': 2024,
    'month': 4,
    'day': 22,
    'hour': 9,
    'minute': 51
})

print(ret)
