class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users

  class << self
    def ruby_users
      find_by(name: "ruby").users
    end
  end
end
