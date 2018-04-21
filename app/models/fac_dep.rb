class FacDep < ApplicationRecord
  belongs_to :unv_fac
  belongs_to :department
  has_many :dep_cours
  has_many :posts
  has_many :courses, through: :dep_cours
  has_one :user
end
