require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :street_1 => "MyString",
      :street_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_street_1[name=?]", "company[street_1]"

      assert_select "input#company_street_2[name=?]", "company[street_2]"

      assert_select "input#company_city[name=?]", "company[city]"

      assert_select "input#company_state[name=?]", "company[state]"

      assert_select "input#company_zip_code[name=?]", "company[zip_code]"

      assert_select "input#company_country[name=?]", "company[country]"
    end
  end
end
