import json

with open("recipes.json","r") as file:
    recipes = json.load(file)

recipes_fixed = []

for r in recipes:
    beverage = {}
    beverage['name'] = r['name']
    beverage['glass'] = r['glass']

    if 'category' in r.keys():
        beverage['category'] = r['category']
    else:
        beverage['category'] = '-'
    if 'garnish' in r.keys():
        beverage['garnish'] = r['garnish']
    else:
        beverage['garnish'] = '-'
    if 'preparation' in r.keys():
        beverage['preparation'] = r['preparation']
    else:
        beverage['preparation'] = '-'

    ingredients = r['ingredients']
    ingredients_str = ''
    for i in ingredients:
        for v in i.values():
            ingredients_str = ingredients_str + ' ' +  str(v)
        ingredients_str = ingredients_str + ', '
    beverage['ingredients'] = (ingredients_str)[1:-2]

    recipes_fixed.append(beverage)
print(recipes_fixed)

with open('recipes_fixed.json','w') as f:
    json.dump(recipes_fixed, f, indent=4, sort_keys=False)
