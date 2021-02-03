class Comment < ActiveRecord::Base
  include Visible
  belongs_to :article

  validates :commenter, presence: true
  validates :body, presence: true
end