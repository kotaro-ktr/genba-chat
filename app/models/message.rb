class Message < ApplicationRecord
<<<<<<< Updated upstream
=======

  validates :content, presence: true
>>>>>>> Stashed changes
  belongs_to :user
end
