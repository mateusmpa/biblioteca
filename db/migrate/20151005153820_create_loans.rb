class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
    	t.datetime :loan_start
    	t.datetime :loan_finish

      t.timestamps null: false
    end
  end
end
