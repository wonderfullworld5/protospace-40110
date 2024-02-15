class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :name
      t.text :description
      t.integer :user_id  # ユーザーのID
      t.integer :likes_count, default: 0  # いいねの数（デフォルト値は0）
      t.boolean :published, default: false  # 公開されたかどうかを示すフラグ
      t.datetime :published_at  # 公開日時
      t.boolean :featured, default: false  # 特集記事かどうかを示すフラグ
      t.string :category  # カテゴリー
      t.timestamps
    end
  end
end

