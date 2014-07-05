class CreateMatrixplantparts < ActiveRecord::Migration
  def change
    create_table :matrixplantparts do |t|
      t.string :plant_part

      t.timestamps
    end
  end
end
