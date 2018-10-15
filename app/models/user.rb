class User < ApplicationRecord
  has_many :tweets
  has_many :group_users
  has_many :groups, through: :group_users

  def self.by_name_and_number(name:, number:)
    self.where(name: "#{name} #{number}")
  end
end
