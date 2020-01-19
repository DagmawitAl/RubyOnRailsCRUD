class CreateRenters < ActiveRecord::Migration[6.0]
  def change
    create_table :renters do |t|
      t.string :name
      t.integer :room_number

      t.timestamps
    end
  end
end
