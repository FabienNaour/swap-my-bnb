class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :bnblink
      t.string :adress
      t.string :area
      t.references :host, foreign_key: true
      t.integer :bedding
      t.datetime :beg_date
      t.datetime :end_date
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
