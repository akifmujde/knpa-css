class DepCour < ApplicationRecord
  belongs_to :fac_dep
  belongs_to :course
  has_many :posts
end
