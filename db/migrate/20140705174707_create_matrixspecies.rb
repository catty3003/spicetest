class CreateMatrixspecies < ActiveRecord::Migration
  def change
    create_table :matrixspecies do |t|
      t.string :m_species

      t.timestamps
    end
  end
end
