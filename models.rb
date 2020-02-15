require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL']||"sqlite3:db/development.db")

class Answer < ActiveRecord::Base
    has_secure_password
    validates :name,
        presence: true
    validates :email,
        presence: true,
        format: {with: /[@]/}
    validates :password,
        presence: true,
        length: {in: 6..10}
end
