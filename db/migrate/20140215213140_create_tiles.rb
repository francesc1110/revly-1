class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.references :user
      t.text :message
      t.string :track_id
      t.string :color
      t.timestamps
    end
  end
end
