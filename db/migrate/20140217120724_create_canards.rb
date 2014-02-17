class CreateCanards < ActiveRecord::Migration
  def change
    create_table :canards do |t|
      t.string :nom

      t.timestamps
    end
  end
end
