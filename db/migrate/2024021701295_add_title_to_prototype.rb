class AddTitleToPrototype < ActiveRecord::Migration[7.0]
  def change
    add_column :prototypes, :title, :string, if_not_exists: true
  end
end
