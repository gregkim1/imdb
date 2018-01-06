class Actor < ApplicationRecord
  # Direct associations

  has_many   :castings,
             :dependent => :destroy

  has_many   :movies,
             :dependent => :destroy

  # Indirect associations

  has_many   :characters,
             :through => :movies,
             :source => :movies

  # Validations

end
