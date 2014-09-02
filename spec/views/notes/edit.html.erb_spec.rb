require 'rails_helper'

RSpec.describe "notes/edit", :type => :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :title => "MyString",
      :tag => "MyString",
      :body => "MyText",
      :comment => "MyText"
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "input#note_title[name=?]", "note[title]"

      assert_select "input#note_tag[name=?]", "note[tag]"

      assert_select "textarea#note_body[name=?]", "note[body]"

      assert_select "textarea#note_comment[name=?]", "note[comment]"
    end
  end
end
