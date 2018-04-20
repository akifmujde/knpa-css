class CreateUnvFacs < ActiveRecord::Migration[5.2]
  def change
    create_table :unv_facs do |t|
      t.references :university, foreign_key: true
      t.references :faculty, foreign_key: true

      t.timestamps
    end
  end
end
