class Employee < ActiveRecord::Base
  belongs_to :company
  validates_formatting_of :email, using: :email
end
