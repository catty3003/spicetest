class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.integer :m_common_name_id
      t.integer :m_genus_id
      t.integer :m_species_id
      t.string :other_matrix_name
      t.string :plant_part_id
      t.integer :storage_form_id
      t.integer :product_form_id
      t.string :place_of_origin
      t.date :date_of_harvest
      t.float :relative_humidity_during_harvest
      t.float :temperature_during_harvest
      t.string :pre_treatment
      t.date :sampling_date
      t.float :m_ph
      t.float :m_aw
      t.float :humidity_of_matrix
      t.float :ash
      t.float :sand
      t.float :lipids
      t.string :further_ingredients
      t.text :m_comment
      t.integer :reference_id
      t.integer :user_id

      t.timestamps
    end
  end
end
