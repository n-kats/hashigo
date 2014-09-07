require 'rails_helper'

RSpec.describe "pdfs/index", :type => :view do
  before(:each) do
    assign(:pdfs, [
      Pdf.create!(
        :title => "Title",
        :document => ""
      ),
      Pdf.create!(
        :title => "Title",
        :document => ""
      )
    ])
  end

  it "renders a list of pdfs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
