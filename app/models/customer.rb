class Customer < ActiveRecord::Base
  include Visible
  belongs_to :article

  paginates_per 10
end
