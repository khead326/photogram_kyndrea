class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  has_many   :likers,
             :through => :likes,
             :source => :user

  # Validations

end
