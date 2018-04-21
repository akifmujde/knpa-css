class Faculty < ApplicationRecord
  has_many :unv_facs
  has_many :universities, through: :unv_facs
end