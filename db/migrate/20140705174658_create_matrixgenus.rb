class CreateMatrixgenus < ActiveRecord::Migration
  def change
    create_table :matrixgenus do |t|
      t.string :m_genus

      t.timestamps
    end
  end
end
