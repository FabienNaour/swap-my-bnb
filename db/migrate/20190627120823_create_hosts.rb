class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :firstname
      t.string :email
      t.boolean :superhost
      t.boolean :validated

      t.timestamps
    end
  end
end
