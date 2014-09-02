require 'rails_helper'

RSpec.describe "links/edit", :type => :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :name => "MyString",
      :url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit link form" do
    render

    assert_select "form[action=?][method=?]", link_path(@link), "post" do

      assert_select "input#link_name[name=?]", "link[name]"

      assert_select "input#link_url[name=?]", "link[url]"

      assert_select "textarea#link_description[name=?]", "link[description]"
    end
  end
end
