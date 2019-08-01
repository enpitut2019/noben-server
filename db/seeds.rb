urls = ["https://iroha-shop.jp/images/items/gkn_8.jpg",
  "https://www.mag2.com/p/news/wp-content/uploads/2017/10/kaneda051-650x401.jpg",
  "https://diamond.jp/mwimgs/e/8/-/img_e8c99f6a83862774eb9e86581b61f402150301.jpg",
  "https://image.rakuten.co.jp/light-works/cabinet/itemdetail/detail_lwg307_03.jpg",
  "https://d2l930y2yx77uc.cloudfront.net/production/uploads/images/9295228/picture_pc_8fa324a32b77ef1056e4cecf16d8fc55.jpg"
]


urls.each do |url|
  notes = Note.create(image_url: url)
end
