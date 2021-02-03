class Article < ActiveRecord::Base
  include Visible

  has_many :comments, dependent: :destroy

  # Sort
  default_scope { order('created_at DESC') }

  # Validate
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }

  # def body_cannot_greater_than
  #   if body.length > 15
  #     errors.add(:message, 'cannot be greater than 15')
  #   end
  # end
end
