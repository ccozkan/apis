
import json

with open("quotes_fixed.json","r") as file:
    quotes = json.load(file)

recipes = quotes
texts = []
d=0
quote_final = []

for r in recipes:

    if len(r['text']) > 1 and r['text_ori'] not in texts:
        print('asd')
        texts.append(r['text_ori'])
        quote_final.append(r)

print(len(recipes))
print(len(quotes))
print(len(texts))

print(len(quote_final))

with open('qf.json','w',encoding='utf-8') as f:
    json.dump(quote_final, f, indent=4, sort_keys=False, ensure_ascii=False)

