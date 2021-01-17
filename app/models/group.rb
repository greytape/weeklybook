class Group < ApplicationRecord
  validates :name, presence: true

  has_many :groups_users
  has_many :users, through: :groups_users

  has_many :books_groups
  has_many :books, through: :books_groups

  has_many :events
end
