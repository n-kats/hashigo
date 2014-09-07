require 'rails_helper'

RSpec.describe "pdfs/edit", :type => :view do
  before(:each) do
    @pdf = assign(:pdf, Pdf.create!(
      :title => "MyString",
      :document => ""
    ))
  end

  it "renders the edit pdf form" do
    render

    assert_select "form[action=?][method=?]", pdf_path(@pdf), "post" do

      assert_select "input#pdf_title[name=?]", "pdf[title]"

      assert_select "input#pdf_document[name=?]", "pdf[document]"
    end
  end
end
