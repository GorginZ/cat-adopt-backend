class User < ApplicationRecord
# for jtw password
 has_secure_password
   validates :email, presence: true
end
