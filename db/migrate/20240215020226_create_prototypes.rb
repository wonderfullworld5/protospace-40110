class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :name  
      t.text :description
      t.integer :user_id
  
      t.timestamps
    end
  end
end



