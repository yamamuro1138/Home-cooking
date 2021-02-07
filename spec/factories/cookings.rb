FactoryBot.define do
  factory :cooking do
    name          {'親子丼'}
    recipe        {'①鳥もも肉1/2枚 ②玉ねぎ1/2個 ③卵3個④ご飯2杯分 ⑤生醤油大さじ2 ⑥みりん大さじ⑦砂糖大さじ1/2 ⑧かつおだし150ml'}
    point         {'1.鶏肉を一口サイズに切り玉ねぎを薄切りにして卵は溶く。2.小鍋に合わせて煮立て、鶏肉に火が通れば卵を入れ半熟状態になれば火を止める。3.丼にご飯をよそい、のせれば完成。'}
    material      {'鶏肉と玉ねぎを切る際に、食べやすいように一口サイズに小さく切った。'}
    association :user

    after(:build) do |cooking|
      cooking.image.attach(io: File.open('app/assets/images/no_image.png'), filename: 'no_image.png')
    end
  end
end
