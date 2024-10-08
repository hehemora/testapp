class Users < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :login, null:false, index: {unique: true}
      t.string :password_digest
      t.timestamps
    end
  end
end
