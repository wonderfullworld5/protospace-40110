class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :name,               null: false
      t.text :profile,              null: false
      t.text :occupation,           null: false
      t.text :position,             null: false
  #ここに記述を追加して、１つのファイルにまとめた
      t.timestamps
    end
  end
end



