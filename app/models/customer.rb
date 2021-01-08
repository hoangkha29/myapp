class Customer < ActiveRecord::Base
  include Visible
  belongs_to :article
end
