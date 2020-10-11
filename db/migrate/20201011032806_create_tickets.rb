class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :event, null: false, foreign_key: true
      t.string :buyer
      t.string :mail
      t.string :confirmation_code

      t.timestamps
    end
  end
end
