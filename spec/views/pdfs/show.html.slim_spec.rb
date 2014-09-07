require 'rails_helper'

RSpec.describe "pdfs/show", :type => :view do
  before(:each) do
    @pdf = assign(:pdf, Pdf.create!(
      :title => "Title",
      :document => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
