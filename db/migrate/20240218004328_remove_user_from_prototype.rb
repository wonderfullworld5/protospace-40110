class RemoveUserFromPrototype < ActiveRecord::Migration[7.0]
  def change
    if foreign_key_exists?(:prototypes, :user)
      remove_foreign_key :prototypes, :users
    end
  end
end

