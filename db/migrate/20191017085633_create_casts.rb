class CreateCasts < ActiveRecord::Migration[6.0]
  def change
    create_table :casts do |t|
      t.string :name
      t.string :about
      t.picture :image

      t.timestamps
    end
  end
end
