class Company < ActiveRecord::Base
  has_many :employees
  validates_formatting_of :zip_code, using: :us_zip
end
