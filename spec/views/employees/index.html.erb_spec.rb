require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :employee_number => "Employee Number",
        :email => "Email",
        :work_phone => "Work Phone",
        :mobile => "Mobile",
        :company => nil
      ),
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :employee_number => "Employee Number",
        :email => "Email",
        :work_phone => "Work Phone",
        :mobile => "Mobile",
        :company => nil
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Work Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
