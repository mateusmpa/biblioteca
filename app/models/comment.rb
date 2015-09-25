class Comment < ActiveRecord::Base
    #  add_foreign_key :comment, :summary
    belongs_to :user
    belongs_to :summary
end
