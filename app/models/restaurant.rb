class Restaurant < ApplicationRecord
  validates :name, presence: true
  has_many_attached :images
  validates :images,
  content_type: [ "image/jpeg", "image/png", "image/gif" ], # 許可ファイル形式
  size: { less_than: 5.megabytes },                       # 1枚あたり5MB未満
  limit: { max: 3 }
end
