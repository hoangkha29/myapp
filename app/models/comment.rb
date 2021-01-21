class Comment < ActiveRecord::Base
  include Visible
  belongs_to :article

  validates :body, presence: true
end