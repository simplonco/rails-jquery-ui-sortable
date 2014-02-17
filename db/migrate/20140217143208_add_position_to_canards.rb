class AddPositionToCanards < ActiveRecord::Migration
  def change
    add_column :canards, :position, :integer
  end
end
