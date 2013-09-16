class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :uid, null: false
      t.string :provider, null: false
      t.integer :user_id, null: false
      t.string :login

      t.timestamps
    end

    add_index :identities, [:uid, :provider], unique: true
    add_index :identities, :user_id
  end
end
