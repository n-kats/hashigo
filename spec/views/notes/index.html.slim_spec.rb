require 'rails_helper'

RSpec.describe "notes/index", :type => :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :title => "Title",
        :tag => "TagTag",
        :body => "MyTextB",
        :comment => "MyTextC"
      ),
      Note.create!(
        :title => "Title",
        :tag => "TagTag",
        :body => "MyTextB",
        :comment => "MyTextC"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "TagTag".to_s, :count => 2
    assert_select "tr>td", :text => "MyTextB".to_s, :count => 2
    assert_select "tr>td", :text => "MyTextC".to_s, :count => 2
  end
end
