class User < ApplicationRecord
  has_secure_password

  has_many :groups_users
  has_many :groups, through: :groups_users

  def full_name
    "#{first_name} #{last_name}"
  end

  def administrator?(group)
    GroupsUser.where(user: self, group: group, role: 'administrator').present?
  end
end
