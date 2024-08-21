class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :rolename
      t.timestamps
    end
    Role.create(rolename: "user")
    Role.create(rolename: "editor")
    add_reference :users, :role, index: true, foreign_key: { to_table: 'roles' }, default: Role.find_by(rolename: "user").id
    User.create!(login: "editor", password_digest: BCrypt::Password.create("123"), role: Role.find_by(rolename: "editor"))
  end
end
