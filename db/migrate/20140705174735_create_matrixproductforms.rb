class CreateMatrixproductforms < ActiveRecord::Migration
  def change
    create_table :matrixproductforms do |t|
      t.string :product_form

      t.timestamps
    end
  end
end
