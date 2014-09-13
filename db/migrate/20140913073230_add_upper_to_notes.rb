class AddUpperToNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :upper, index: true
  end
end
