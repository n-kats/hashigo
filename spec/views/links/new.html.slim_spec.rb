require 'rails_helper'

RSpec.describe "links/new", :type => :view do
  before(:each) do
    assign(:link, Link.new(
      :name => "MyString",
      :url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input#link_name[name=?]", "link[name]"

      assert_select "input#link_url[name=?]", "link[url]"

      assert_select "textarea#link_description[name=?]", "link[description]"
    end
  end
end
