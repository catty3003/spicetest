class CreateMatrixnames < ActiveRecord::Migration
  def change
    create_table :matrixnames do |t|
      t.string :m_common_name

      t.timestamps
    end
  end
end
