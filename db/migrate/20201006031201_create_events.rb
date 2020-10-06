class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :client, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :image
      t.string :slug
      t.string :start_date
      t.string :publish_date
      t.string :publish_state
      t.string :tickets_available
      t.string :price

      t.timestamps
    end
  end
end
