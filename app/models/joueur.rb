class Joueur < ApplicationRecord
  belongs_to :job
  has_one :equipe
end
