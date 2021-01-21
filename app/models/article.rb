class Article < ActiveRecord::Base
  include Visible

  has_many :comments, dependent: :destroy

  # Sort
  default_scope { order('created_at DESC') }

  # Validate
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }
end
