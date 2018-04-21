class Department < ApplicationRecord
  has_many :fac_deps
  has_many :unv_facs, through: :fac_deps
end
