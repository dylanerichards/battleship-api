class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.string :coordinates

      t.timestamps null: false
    end
  end
end
