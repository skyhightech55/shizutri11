spot1 = Category.create(name: '浜名湖・浜松')
spot2 = Category.create(name: '大井川・焼津・掛川')
spot3 = Category.create(name: '静岡タウン')
spot4 = Category.create(name: '日本平・三保・清水')
spot5 = Category.create(name: '富士・富士宮')
spot6 = Category.create(name: '伊豆')

spot1_children_array = ['中田島砂丘', 'はままつフラワーパーク', '浜名湖オルゴールミュージアム', '浜松市楽器博物館']
spot2_children_array = ['寸又峡夢のつり橋', '奥大井音戯の郷', '花沢の里', '掛川花鳥園']
spot3_children_array = ['静岡市美術館', '駿府城公園', '登呂遺跡', '浅間神社']
spot4_children_array = ['日本平動物園', '三保松原', '久能山東照宮', '日本平夢テラス']
spot5_children_array = ['まかいの牧場', '岩本山公園', '白糸の滝', '富士山世界遺産センター']
spot6_children_array = ['城ヶ崎海岸', '修善寺温泉', '河津七滝', '大室山']
spot1_grandchildren_array = [
  ['海岸沿いにある美しい砂丘。日本三代砂丘のひとつでもある。'], # 中田島砂丘
  ['１年を通し、四季折々の花が楽しめることを売りにしているが、４月に行ったら花はあまり咲いていなかった。'], # はままつフラワーパーク
  ['ロープウェイで海を渡った先にあるオルゴール専門の博物館。'], # 浜名湖オルゴールミュージアム
  ['世界中の楽器約３０００点を展示している博物館。'] # 浜松市楽器博物館
]
spot2_grandchildren_array = [
  ['大井川にかかるスリル満点の吊り橋。ものすごく揺れる。'], # 夢のつり橋
  ['大井川鉄道千頭駅の近くにある音をテーマにした博物館。人が少なくゆっくりと楽しめる。'], # 音戯の郷
  ['焼津の山の中にあるハイキングコース。途中にある展望台からは焼津市が一望できる。'], # 花沢の里
  ['様々な鳥が放し飼いにされており、触れ合うことができる。'] # 掛川花鳥園
]
spot3_grandchildren_array = [
  ['充実した常設展示のほか、企画展も積極的に行っている。'], # 静岡市美術館
  ['徳川家康が余生を過ごしたお城の跡地を整備した公園。'], # 駿府城公園
  ['弥生時代の住居や高床倉庫などが再現されている施設。静岡の吉野ヶ里遺跡である。'], # 登呂遺跡
  ['国の重要文化財にも指定されている歴史ある神社。'] # 浅間神社
]
spot4_grandchildren_array = [
  ['規模は大きくないがレッサーパンダをはじめ珍しい動物が数多く展示されている。'], # 日本平動物園
  ['海、松原、そして富士山を同時に楽しめる絶景スポット。'], # 三保松原
  ['徳川家康の遺言を受けて建設された日本で最初の東照宮。'], # 久能山東照宮
  ['富士山。駿河湾などの絶景を楽しむことを目的に近年造られた。'] # 日本平夢テラス
]
spot5_grandchildren_array = [
  ['広大な牧場で牛や羊と触れ合うことができる。周辺ではキャンプも可能。'], # まかいの牧場
  ['春には桜や梅を楽しむことができる'], # 岩本山公園
  ['富士山の雪解け水が１５０メートルの高さから落ちる美しい滝'], # 白糸の滝
  ['富士山の歴史を学ぶことができ、擬似富士登山も体験できる。'] # 富士山世界遺産センター
]
spot6_grandchildren_array = [
  ['断崖絶壁の入江や岬が約８キロつ続く海岸であり、遊歩道が整備されている。'], # 城ヶ崎海岸
  ['桂川沿いにある小規模な温泉街。'], # 修善寺温泉
  ['河津川にかかる７つの滝をめぐる遊歩道が整備されている。'], # 河津七滝
  ['お椀を伏せたような形が特徴的な山。'] # 大室山
]
spot1_children_array.each_with_index do |children, index|
  children = spot1.children.create(name: children)
  spot1_grandchildren_array[index].each do |grandchildren|
    children.children.create(name: grandchildren)
  end
end
spot2_children_array.each_with_index do |children, index|
  children = spot2.children.create(name: children)
  spot2_grandchildren_array[index].each do |grandchildren|
    children.children.create(name: grandchildren)
  end
end