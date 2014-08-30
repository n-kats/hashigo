class CreateBlogReports < ActiveRecord::Migration
  def change
    create_table :blog_reports do |t|
      t.string :file_title
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
