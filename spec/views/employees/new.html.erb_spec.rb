require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :employee_number => "MyString",
      :email => "MyString",
      :work_phone => "MyString",
      :mobile => "MyString",
      :company => nil
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input#employee_first_name[name=?]", "employee[first_name]"

      assert_select "input#employee_last_name[name=?]", "employee[last_name]"

      assert_select "input#employee_employee_number[name=?]", "employee[employee_number]"

      assert_select "input#employee_email[name=?]", "employee[email]"

      assert_select "input#employee_work_phone[name=?]", "employee[work_phone]"

      assert_select "input#employee_mobile[name=?]", "employee[mobile]"

      assert_select "input#employee_company_id[name=?]", "employee[company_id]"
    end
  end
end
