class User < ApplicationRecord
  has_secure_password

  def admin?
    true if admin
  end
end

