require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :street_1 => "Street 1",
        :street_2 => "Street 2",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :country => "Country"
      ),
      Company.create!(
        :name => "Name",
        :street_1 => "Street 1",
        :street_2 => "Street 2",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :country => "Country"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street 1".to_s, :count => 2
    assert_select "tr>td", :text => "Street 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
