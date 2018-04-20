class CreateWebSites < ActiveRecord::Migration[5.2]
  def change
    create_table :web_sites do |t|
      t.string :content

      t.timestamps
    end
  end
end
