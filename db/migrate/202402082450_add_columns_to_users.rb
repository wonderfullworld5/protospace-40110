class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change

    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :catch_copy, null: false
      t.text :concept, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
    # プロトタイプのカラムを一時的にコメントアウト
    # unless column_exists?(:prototypes, :title)
    #   add_column :prototypes, :title, :string, null: false
    # end
    
    # unless column_exists?(:prototypes, :catch_copy)
    #   add_column :prototypes, :catch_copy, :text, null: false
    # end
    
    # unless column_exists?(:prototypes, :concept)
    #   add_column :prototypes, :concept, :text, null: false
    # end
  