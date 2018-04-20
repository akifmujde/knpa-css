class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :content
      t.string :file
      t.references :university, foreign_key: true
      t.references :unv_fac, foreign_key: true
      t.references :fac_dep, foreign_key: true
      t.references :dep_cour, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
