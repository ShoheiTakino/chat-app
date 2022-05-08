class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?

  private 
  def was_attached? 
    self.image.attached?
  end
end
