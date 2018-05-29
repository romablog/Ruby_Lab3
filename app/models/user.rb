class User < ApplicationRecord
  has_and_belongs_to_many :trips

  validates :name, :second_name, presence: true
  validates :name, :second_name, length: { minimum: 2 }
  validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { in: 6..20 }

  before_validation :normalize_email, on: :create

  def self.get_top_users
    User
        .left_joins(:trips)
        .group(:id)
        .order('COUNT(trips.id) DESC')
  end

  private
  def normalize_email
    self.email = email.downcase
  end
end
