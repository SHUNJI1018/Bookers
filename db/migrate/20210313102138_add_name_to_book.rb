class AddNameToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :new, :string
  end
end
