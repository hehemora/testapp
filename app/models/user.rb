# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  login           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'bcrypt'

class User < ApplicationRecord
    include BCrypt
    has_secure_password

    validates :login, presence: true
    validates :login, uniqueness: true

end
