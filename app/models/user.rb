class User < ApplicationRecord
    has_many :contents, dependent: :destroy
    has_secure_password
end
