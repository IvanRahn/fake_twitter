class User < ApplicationRecord
  has_many :tweets, dependent: :destroy
  has_many :group_users, dependent: :destroy
  has_many :groups, through: :group_users, dependent: :destroy

  def self.by_name_and_number(name:, number:)
    self.where(name: "#{name} #{number}")
  end
end
