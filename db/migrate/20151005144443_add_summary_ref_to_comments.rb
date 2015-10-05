class AddSummaryRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :summary, index: true, foreign_key: true
  end
end
