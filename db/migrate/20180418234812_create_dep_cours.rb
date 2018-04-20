class CreateDepCours < ActiveRecord::Migration[5.2]
  def change
    create_table :dep_cours do |t|
      t.references :fac_dep, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
