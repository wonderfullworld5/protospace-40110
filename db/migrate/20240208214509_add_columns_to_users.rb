class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    # 既存のカラムが存在しないことを確認する
    unless column_exists?(:users, :profile)
      add_column :users, :profile, :text
    end
    
    unless column_exists?(:users, :occupation)
      add_column :users, :occupation, :text
    end
    
    unless column_exists?(:users, :position)
      add_column :users, :position, :text
    end

    # プロトタイプのカラムを追加する
    unless column_exists?(:prototypes, :title)
      add_column :prototypes, :title, :string, null: false
    end
    
    unless column_exists?(:prototypes, :catch_copy)
      add_column :prototypes, :catch_copy, :text, null: false
    end
    
    unless column_exists?(:prototypes, :concept)
      add_column :prototypes, :concept, :text, null: false
    end
  end
end
