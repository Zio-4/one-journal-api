class User < ApplicationRecord
    has_secure_password
    has_many :journals

    validates :username, presence: true, confirmation: {case_sensitive: false}, uniqueness: true, length: {in: 6..30}
    validates :password, presence: true, confirmation: true
    validate :password_requirements_are_met
    validates :name, presence: true, length: {maximum: 30}

    # Custom validation to make sure passwords are super secure
    def password_requirements_are_met
        rules = {
          " must contain at least one lowercase letter"  => /[a-z]+/,
          " must contain at least one uppercase letter"  => /[A-Z]+/,
          " must contain at least one digit"             => /\d+/,
          " must contain at least one special character" => /[^A-Za-z0-9]+/
        }
      
        rules.each do |message, regex|
          errors.add( :password, message ) unless password.match( regex )
        end
    end
end
