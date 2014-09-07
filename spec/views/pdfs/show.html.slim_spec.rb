require 'rails_helper'

#FIXME
RSpec.describe "pdfs/show", :type => :view do
  before(:each) do
    sample_pdf_path = File.expand_path('../sample.pdf', __FILE__) 
    @pdf = assign(:pdf, Pdf.create!(
      :title => "Title",
      :document => File.binread(sample_pdf_path)
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
