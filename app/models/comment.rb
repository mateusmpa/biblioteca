class Comment < ActiveRecord::Base
#  add_foreign_key :comments, :summary
  belongs_to :summary
end
