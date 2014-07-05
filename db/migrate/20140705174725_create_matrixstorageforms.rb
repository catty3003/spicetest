class CreateMatrixstorageforms < ActiveRecord::Migration
  def change
    create_table :matrixstorageforms do |t|
      t.string :storage_form

      t.timestamps
    end
  end
end
