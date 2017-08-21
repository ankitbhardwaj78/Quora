class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.string :type
      t.references :User, index: true, foreign_key: true
      t.references :Question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
