answer = input('好きな音楽は何ですか？')

with open('fav_music.txt', 'w') as f:
        f.write(answer)