class MakeChangament < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :cvs, :parsed_text, :text
  end
end
