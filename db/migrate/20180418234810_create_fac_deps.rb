class CreateFacDeps < ActiveRecord::Migration[5.2]
  def change
    create_table :fac_deps do |t|
      t.references :unv_fac, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
