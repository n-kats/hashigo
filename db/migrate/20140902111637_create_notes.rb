class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :tag
      t.text :body
      t.text :comment

      t.timestamps
    end
  end
end
