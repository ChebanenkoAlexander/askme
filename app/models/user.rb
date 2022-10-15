require 'openssl'
class User < ApplicationRecord
   ITERATIONS=20000
   DIGEST=OpenSSL::Digest::SHA256.new
   validates :email, :username, presence: true
   validates :email, :username, uniqueness: true
   has_many :questions 
   attr_accessor :password
   validates_presence_of :password, on: :create
   validates_confirmation_of :password 
   before_save :encrypt_password
   def encrypt_password
      if self.password.present?
         self.password_salt=User.hash_to_string(OpenSSL::Random.random_bytes(16))
         self.password_hash+User.hash_to_string(OpenSSL::PKCS5.pdkdf2_hmac(self.password, self.password_salf, ITERATIONS, DIGEST.length, DIGEST))

      end
   end
end