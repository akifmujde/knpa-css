class Course < ApplicationRecord
  has_many :dep_cours
  has_many :fac_deps, through: :dep_cours
end
