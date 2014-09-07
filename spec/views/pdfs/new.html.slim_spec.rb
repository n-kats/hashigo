require 'rails_helper'

RSpec.describe "pdfs/new", :type => :view do
  before(:each) do
    assign(:pdf, Pdf.new(
      :title => "MyString",
      :document => ""
    ))
  end

  it "renders new pdf form" do
    render

    assert_select "form[action=?][method=?]", pdfs_path, "post" do

      assert_select "input#pdf_title[name=?]", "pdf[title]"

      assert_select "input#pdf_document[name=?]", "pdf[document]"
    end
  end
end
