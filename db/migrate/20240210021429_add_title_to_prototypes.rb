class AddTitleToPrototypes < ActiveRecord::Migration[7.0]
  def change
    unless table_exists?(:prototypes)
      create_table :prototypes do |t|
        
        t.string :title
      end
    else
      add_column :prototypes, :title, :string unless column_exists?(:prototypes, :title)
    end
  end
end
