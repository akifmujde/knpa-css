class UnvFac < ApplicationRecord
  belongs_to :university
  belongs_to :faculty
  has_many :fac_deps
  has_many :posts
  has_many :departments, through: :fac_deps
  has_one :user
end
