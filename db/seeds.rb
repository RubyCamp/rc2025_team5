# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# 飲食店のテストデータ
Restaurant.create({ name: "飲食店1" })
Restaurant.create({ name: "飲食店2" })
Restaurant.create({ name: "飲食店3" })

# 夜景のテストデータ
NightSpot.create!(
  name: '宍道湖大橋',
  geo_lat: '35.46681159',
  geo_lng: '133.05195668',
  description: '宍道湖の東端に位置する、大橋川にかかる宍道湖大橋（しんじこおおはし）。ライトアップされた橋だけでなく、ビルや街灯の明かりが宍道湖に反射した美しいリフレクションを楽しめます。'
)

NightSpot.create!(
  name: '風の丘公園',
  geo_lat: '35.49876683',
  geo_lng: '133.06367218',
  description: '星景撮影スポットとして人気の場所。高い丘にあるため、光害が少なく、星空を美しく撮影できます。また、直径3メートル、重さは1トンを超える石の風車がある点も風の丘公園の特徴です。'
)

NightSpot.create!(
  name: '日御碕灯台',
  geo_lat: '35.43372633',
  geo_lng: '132.62945422',
  description: '灯台は高さ43.65m、海面から灯塔の頭上までは63.30mと、日本一の高さを誇ります。灯台を上ると見える日本海の景色も良いですが、断崖絶壁が連なるダイナミックで美しい風景と真っ白な灯台を入れた夜景撮影が人気です。'
)
# イベントのテストデータ
Event.create!(
  name: '水郷祭',
  geo_lat: '35.465056',
  geo_lng: '133.052399',
  description: '松江水郷祭湖上花火大会は、島根県松江市の宍道湖で開催される日本有数の花火大会です。'
)

Event.create!(
  name: '水燈路',
  geo_lat: '35.4751202',
  geo_lng: '133.05073382',
  description: '「松江水燈路（読み方：まつえすいとうろ）」は、松江の秋の風物詩。松江城周辺がライトアップされる幻想的な光のイベントです。期間中は、松江城やその周辺に多くの行燈が並べられ、美しい風景を楽しむことができます。'
)

Event.create!(
  name: '雲南市桜まつり',
  geo_lat: '35.29456085',
  geo_lng: '132.90184974',
  description: 'ソメイヨシノの見ごろに合わせて、雲南市木次町のJR木次駅前商店街周辺を会場に「雲南市桜まつり」が開催されます。'
)

# Onsenクラスにデータを追加するコードを書く
Onsen.create!(
  name:'玉造温泉',
  geo_lat:'35.41685249',
  geo_lng:'133.01014259',
  description:'島根県松江市にある歴史ある温泉地。美肌効果が高いとされるアルカリ性単純泉が特徴で、古くから多くの文人墨客に愛されてきました。温泉街には伝統的な旅館やモダンなホテルが立ち並び、足湯やカフェも点在しています。周辺には玉造温泉神社や松江城などの観光スポットもあり、自然と文化を楽しむことができます。四季折々の風景とともに、心身を癒すひとときを提供する人気の温泉地です。',
  tags:'お肌すべすべ',
  open_time:'1000',
  close_time:'2200'
)
Onsen.create!(
  name:'松江しんじ湖温泉',
  geo_lat:'35.46739',
  geo_lng:'133.04592',
  description:'湖畔の景色と夕日が魅力です。また、比較的新しい温泉地で、観光アクセス抜群です。湯冷めしにくく、肌や血行に良い泉質です。',
  tags:'夕日スポット',
  open_time:'1600',
  close_time:'2000'
  )
Onsen.create!(
  name:'湯の川温泉',
  geo_lat:'35.389917',
  geo_lng:'132.871861',
  description:'日本三美人の湯の一つです。肌にしっとりすべすべの感触をもたらします。湯上がりは「落ち着いたしっとり感」が感じられます。三方を山に囲まれたのどかな環境に湧く源泉かけ流しの温泉地です。',
  tags:'日本三美人の湯',
  open:'1000',
  close:'2130'
)
Onsen.create!(
  name:'湯宿 草菴',
  geo_lat:'35.3885164',
  geo_lng:'132.8722011',
  description:'日本三美人の湯として名高い湯の川温泉の源泉を、かけ流し100%で贅沢に楽しめる温泉旅館です。コンセプトは「復古創新」。20世紀初頭の古民家建築を再生し、ヨーロッパのアンティーク家具と融合させた独特の空間美を追求しています。また、宿内は、雑木林に囲まれた静かな杜で、茅葺きの門と庭園が出迎えます',
  tags:'源泉かけ流し',
  open:'1130',
  close:'1400'
)
Onsen.create!(
  name:'津和野温泉 ゆとりろ津和野',
  geo_lat:'34.46856498',
  geo_lng:'131.7731117',
  description:'自家源泉で湧き出す温泉は、炭酸水素塩泉と塩化物泉（別名「美人の湯」）を兼ね備えています。保温・保湿効果が高く、肌がつるつるすべすべに感じられる湯ざわりが魅力です。',
  tags:'美人の湯',
  open:'1500',
  close:'2200'
)
Onsen.create!(
  name:'いわみの湯 旭温泉 隠家ゆかり',
  geo_lat:'34.8844063',
  geo_lng:'132.2654025',
  description:'化粧水のような滑らかさがある湯です。客室露天風呂は源泉かけ流しで、夜には満天の星空を独り占めする贅沢な時間が楽しめます。',
  tags:'満点の星空',
  open:'1030',
  close:'2000'
)
Onsen.create!(
  name:'荒磯温泉 荒磯館',
  geo_lat:'34.75747722',
  geo_lng:'131.88855812',
  description:'日本海の波打ち際に建つ一軒宿で、全室オーシャンビューです。効能は美肌効果、疲労回復、神経痛・リューマチなどに効果的とされています。',
  tags:'オーシャンビュー',
  open:'1100',
  close:'1400'
)
Onsen.create!(
  name:'出雲・はたご小田温泉',
  geo_lat:'35.28053711',
  geo_lng:'132.62315056',
  description:'大正11年（約100年前）創業の小さな木造旅館です。「現代数寄屋造り」の建築で、玄関の書画など随所に芸術的演出が施されています。',
  tags:'源泉かけ流し',
  open:'1600',
  close:'2300'
)
Onsen.create!(
  name:'三瓶温泉 国民宿舎さんべ荘',
  geo_lat:'35.0956',
  geo_lng:'132.8222',
  description:'神経痛、筋肉痛、関節痛、疲労回復、健康増進などの効能があります。鉄分や塩分を含み、保湿・保温効果に優れています。',
  tags:'星空観測・たくさんの効能',
  open:'1030',
  close:'2000'
)
Onsen.create!(
  name:'多田温泉 白龍館',
  geo_lat:'34.9806',
  geo_lng:'132.1736',
  description:'大正5年（1916年）に鉱山の坑道跡から湧出した酸性の温泉です。殺菌効果が高く、肌トラブルやアトピーに効果が期待されます。',
  tags:'老舗旅館',
  open:'1000',
  close:'2200'
)
