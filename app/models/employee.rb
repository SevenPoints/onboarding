class Employee < ActiveRecord::Base
  belongs_to :company
  validates_formatting_of :email, using: :email
  validates_formatting_of :work_phone, using: :us_phone
  validates_formatting_of :mobile, using: :us_phone
end
