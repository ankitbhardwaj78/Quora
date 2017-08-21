class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.references :User, index: true, foreign_key: true
      t.references :Question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
