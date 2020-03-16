# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lady = MainTag.create(:name=>"レディース")

lady_tops = lady.children.create(:name=>"トップス")
lady_jacket = lady.children.create(:name=>"ジャケット/アウター")
lady_pants = lady.children.create(:name=>"パンツ")
lady_skirt = lady.children.create(:name=>"スカート")
lady_onepiece = lady.children.create(:name=>"ワンピース")
lady_shoes = lady.children.create(:name=>"靴")
lady_roomwear = lady.children.create(:name=>"ルームウェア/パジャマ")
lady_legwear = lady.children.create(:name=>"レッグウェア")
lady_hat = lady.children.create(:name=>"帽子")
lady_bag = lady.children.create(:name=>"バッグ")
lady_accessory = lady.children.create(:name=>"アクセサリー")
lady_hairaccessory = lady.children.create(:name=>"ヘアアクセサリー")
lady_goods = lady.children.create(:name=>"小物")
lady_watch = lady.children.create(:name=>"時計")

lady_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"}, {:name=>"シャツ/ブラウス(半袖/袖なし)"}, {:name=>"シャツ/ブラウス(七分/長袖)"}, {:name=>"ポロシャツ"}, {:name=>"キャミソール"}, {:name=>"タンクトップ"}, {:name=>"ホルターネック"}, {:name=>"ニット/セーター"}, {:name=>"チュニック"}, {:name=>"カーディガン/ボレロ"}, {:name=>"アンサンブル"}, {:name=>"ベスト/ジレ"}, {:name=>"パーカー"},{:name=>"その他"}])
lady_jacket.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"レザージャケット"},{:name=>"ダウンジャケット"},{:name=>"ライダースジャケット"},{:name=>"ミリタリージャケット"},{:name=>"ダウンベスト"},{:name=>"ジャンパー/ブルゾン"},{:name=>"ポンチョ"},{:name=>"ロングコート"},{:name=>"トレンチコート"},{:name=>"ダッフルコート"},{:name=>"ピーコート"},{:name=>"その他"}])
lady_pants.children.create([{:name=>"デニム/ジーンズ"},{:name=>"ショートパンツ"},{:name=>"カジュアルパンツ"},{:name=>"ハーフパンツ"},{:name=>"チノパン"},{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"クロップドパンツ"},{:name=>"サロペット/オーバーオール"},{:name=>"オールインワン"},{:name=>"サルエルパンツ"},{:name=>"ガウチョパンツ"},{:name=>"その他"}])
lady_skirt.children.create([{:name=>"ミニスカート"},{:name=>"ひざ丈スカート"},{:name=>"ロングスカート"},{:name=>"キュロット"},{:name=>"その他"}])
lady_onepiece.children.create([{:name=>"ミニワンピース"},{:name=>"ひざ丈ワンピース"},{:name=>"ロングワンピース"},{:name=>"その他"}])
lady_shoes.children.create([{:name=>"ハイヒール/パンプス"},{:name=>"ブーツ"},{:name=>"サンダル"},{:name=>"スニーカー"},{:name=>"ミュール"},{:name=>"モカシン"},{:name=>"ローファー/革靴"},{:name=>"フラットシューズ/バレエシューズ"},{:name=>"長靴/レインシューズ"},{:name=>"その他"}])
lady_roomwear.children.create([{:name=>"パジャマ"},{:name=>"ルームウェア"},{:name=>"その他"}])
lady_legwear.children.create([{:name=>"ソックス"},{:name=>"スパッツ/レギンス"},{:name=>"ストッキング/タイツ"},{:name=>"レッグウォーマー"},{:name=>"その他"}])
lady_hat.children.create([{:name=>"ニットキャップ/ビーニー"},{:name=>"ハット"},{:name=>"ハンチング/ベレー帽"},{:name=>"キャップ"},{:name=>"キャスケット"},{:name=>"麦わら帽子"},{:name=>"その他"}])
lady_bag.children.create([{:name=>"ハンドバッグ"},{:name=>"トートバッグ"},{:name=>"エコバッグ"},{:name=>"リュック/バックパック"},{:name=>"ボストンバッグ"},{:name=>"スポーツバッグ"},{:name=>"ショルダーバッグ"},{:name=>"クラッチバッグ"},{:name=>"ポーチ/バニティ"},{:name=>"ボディバッグ/ウエストバッグ"},{:name=>"マザーズバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"ビジネスバッグ"},{:name=>"旅行用バッグ/キャリーバッグ"},{:name=>"その他"}])
lady_accessory.children.create([{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"バングル/リストバンド"},{:name=>"リング"},{:name=>"ピアス（片耳用）"},{:name=>"ピアス（両耳用）"},{:name=>"イヤリング"},{:name=>"アンクレット"},{:name=>"ブローチ/コサージュ"},{:name=>"チャーム"},{:name=>"その他"}])
lady_hairaccessory.children.create([{:name=>"ヘアゴム/シュシュ"},{:name=>"ヘアバンド/カチューシャ"},{:name=>"ヘアピン"},{:name=>"その他"}])
lady_goods.children.create([{:name=>"長財布"},{:name=>"折り財布"},{:name=>"コインケース/小銭入れ"},{:name=>"名刺入れ/定期入れ"},{:name=>"キーケース"},{:name=>"キーホルダー"},{:name=>"手袋/アームカバー"},{:name=>"ハンカチ"},{:name=>"ベルト"},{:name=>"マフラー/ショール"},{:name=>"ストール/スヌード"},{:name=>"バンダナ/スカーフ"},{:name=>"ネックウォーマー"},{:name=>"サスペンダー"},{:name=>"その他"}])
lady_watch.children.create([{:name=>"腕時計（アナログ）"},{:name=>"腕時計（デジタル"},{:name=>"ラバーベルト"},{:name=>"レザーベルト"},{:name=>"金属ベルト"},{:name=>"その他"}])



men = MainTag.create(:name=>"メンズ")

men_tops = men.children.create(:name=>"トップス")

men_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}])




baby = MainTag.create(:name=>"ベビー・キッズ")

baby_girl_95 = baby.children.create(:name=>"ベビー服（女の子用）～９５cm")

baby_girl_95.children.create([{:name=>"トップス"}])



interior = MainTag.create(:name=>"インテリア・住まい・小物")

interior_kitchin = interior.children.create(:name=>"キッチン/食器")

interior_kitchin.children.create([{:name=>"食器"}])



book = MainTag.create(:name=>"本・音楽・ゲーム")

book_book= book.children.create(:name=>"本")

book_book.children.create([{:name=>"文学/小説"}])



hobby = MainTag.create(:name=>"おもちゃ・ホビー・グッズ")

hobby_hobby= hobby.children.create(:name=>"おもちゃ")

hobby_hobby.children.create([{:name=>"キャラクターグッズ"}])



cosme = MainTag.create(:name=>"コスメ・香水・美容")

cosme_base= cosme.children.create(:name=>"ベースメイク")

cosme_base.children.create([{:name=>"ファンデーション"}])



appliances = MainTag.create(:name=>"家電・スマホ・カメラ")

appliances_phone= appliances.children.create(:name=>"スマートフォン/携帯電話")

appliances_phone.children.create([{:name=>"スマートフォン本体"}])



sport = MainTag.create(:name=>"スポーツ・レジャー")

sport_golf= sport.children.create(:name=>"ゴルフ")

sport_golf.children.create([{:name=>"クラブ"}])



handmade = MainTag.create(:name=>"ハンドメイド")

handmade_accessory= handmade.children.create(:name=>"ゴルフ")

handmade_accessory.children.create([{:name=>"ピアス"}])



ticket = MainTag.create(:name=>"チケット")

ticket_music= ticket.children.create(:name=>"音楽")

ticket_music.children.create([{:name=>"男性アイドル"}])



car = MainTag.create(:name=>"自動車・オートバイ")

car_body= car.children.create(:name=>"自動車本体")

car_body.children.create([{:name=>"国内自動車本体"}])



car = MainTag.create(:name=>"自動車・オートバイ")

car_body= car.children.create(:name=>"自動車本体")

car_body.children.create([{:name=>"国内自動車本体"}])



other = MainTag.create(:name=>"その他")

other_pet= other.children.create(:name=>"ペット用品")

other_pet.children.create([{:name=>"ペットフード"}])