import json

with open("fix.json","r") as file:
    recipes = json.load(file)

i=0
quotes_fixed = []
quote_texts= []


for r in recipes['results']:

    quote = {}

    if 'qTr' in r.keys() and len(r['qTr']) > 1 and r['quoteText'] not in quote_texts:
        quote['text_ori'] = r['quoteText']
        quote['text'] = r['qTr']
        quote['author'] = r['quoteAuthor']
        quote['author_ori'] = r['quoteAuthor']
        quotes_fixed.append(quote)

    elif 'quoteTr' in r.keys() and len(r['quoteTr']) > 1 and r['quoteText'] not in quote_texts:
        quote['text_ori'] = r['quoteText']
        quote['text'] = r['quoteTr']
        quote['author'] = r['quoteAuthor']
        quote['author_ori'] = r['quoteAuthor']
        quotes_fixed.append(quote)

    elif 'quoteTr' not in r.keys() and 'qTr' not in r.keys():
        quote['text_ori'] = r['quoteText']
        quote['author'] = r['quoteAuthor']
        quote['text'] = ''
        quote['author_ori'] = r['quoteAuthor']
        quotes_fixed.append(quote)

    if r['quoteText'] in quote_texts:
        print(i)
        i = i + 1

    quote_texts.append(r['quoteText'])

print(len(quote_texts))
print(len(recipes['results']))

with open('quotes_fixed.json','w',encoding='utf-8') as f:
    json.dump(quotes_fixed, f, indent=4, sort_keys=False, ensure_ascii=False)


# 32528
