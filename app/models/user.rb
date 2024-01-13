class User < ApplicationRecord
    has_many :questions, dependent: :destroy
    has_many :answers, dependent: :destroy
    
    validates :password_encrypt, presence: true, confirmation: true
    attr_accessor :password_encrypt, :password_encrypt_confirmation, :a
    
    def password_encrypt=(val)
        puts "passwordチェック"
        if val.present?
            self.password = BCrypt::Password.create(val)
        end
        @password_encrypt = val
    end
end
