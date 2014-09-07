class CreatePdfs < ActiveRecord::Migration
  def change
    create_table :pdfs do |t|
      t.string :title
      t.binary :document, limit: 10.megabyte

      t.timestamps
    end
  end
end
