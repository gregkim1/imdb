class Movie < ApplicationRecord
  # Direct associations

  belongs_to :actor

  belongs_to :director

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  has_many   :actors,
             :through => :users,
             :source => :actor

  # Validations

end
