class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.date :dob, null: false
      t.string :email, null: false, index: { unique: true, name: "unique_emails" }
      t.string :phone_number, null: false

      t.timestamps
    end
  end
end
