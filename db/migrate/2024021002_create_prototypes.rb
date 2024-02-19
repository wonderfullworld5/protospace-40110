class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    #unless table_exists?(:prototypes)
      #上に記述追加した
    create_table :prototypes do |t|
      t.string :title,               null: false
      t.text :catch_copy,            null: false
      t.text :concept,               null: false
     t.references :user,            foreign_key: true, null: false
  #ここに記述を追加して、１つのファイルにまとめた
      t.timestamps
    end
  end
end
