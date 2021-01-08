module Visible
  extend ActiveSupport::Concern
  # attr_accessible :name, :status, :description, :code_type, :created_in_cell_id, :course_categories_id
  # VALID_STATUSES = ['public', 'private', 'archived']
  #
  # included do
  #   validates :status, inclusion: {in: VALID_STATUSES}
  # end
  #
  # def public_count
  #   where(status: 'public').count
  # end
  #
  # def archived?
  #   status == 'archived'
  # end
end
