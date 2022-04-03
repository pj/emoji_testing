import pprint
from fontTools.ttLib import TTCollection

with open("Apple Color Emoji.ttc", 'rb') as input:
    collection = TTCollection(input) 
    emoji_font = None
    for font in collection.fonts:
        for name in font['name'].names:
            if name.nameID == 1 and name.string == b'Apple Color Emoji':
                emoji_font = font
                break
    with open('Apple Color Emoji.ttf', 'wb') as output:
        emoji_font.save(output)