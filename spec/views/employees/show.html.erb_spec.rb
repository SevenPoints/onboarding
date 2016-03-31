require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :employee_number => "Employee Number",
      :email => "Email",
      :work_phone => "Work Phone",
      :mobile => "Mobile",
      :company => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Employee Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Work Phone/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(//)
  end
end
