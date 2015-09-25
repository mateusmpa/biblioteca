class Summary < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 10 }, length: { maximum: 140 }
end
