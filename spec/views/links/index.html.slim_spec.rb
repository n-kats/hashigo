require 'rails_helper'

RSpec.describe "links/index", :type => :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        :name => "Qiita",
        :url => "http://qiita.com/",
        :description => "MyText"
      )#,
      #Link.create!(
      #  :name => "Github",
      #  :url => "https://github.com/",
      #  :description => "MyText"
      #)
    ])
  end

  it "renders a list of links" do
    render
    assert_select "tr>td", :text => "Qiita".to_s, :count => 1
    #assert_select "tr>td", :text => "http://qiita.com/".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 1
  end
end
