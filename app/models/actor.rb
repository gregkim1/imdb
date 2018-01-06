class Actor < ApplicationRecord
  # Direct associations

  has_many   :castings,
             :dependent => :destroy

  has_many   :movies,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
