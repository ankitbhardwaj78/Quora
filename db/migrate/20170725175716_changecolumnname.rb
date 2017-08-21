class Changecolumnname < ActiveRecord::Migration
  def change
    rename_column :upvotes, :type, :category
  end
end
