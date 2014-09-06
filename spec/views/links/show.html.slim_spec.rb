require 'rails_helper'

RSpec.describe "links/show", :type => :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :name => "Name",
      :url => "http://Url",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
  end
end
