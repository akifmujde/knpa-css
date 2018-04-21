class University < ApplicationRecord
  belongs_to :web_site
  has_many :unv_facs
  has_many :posts
  has_many :faculties, through: :unv_facs
  has_one :user
end
