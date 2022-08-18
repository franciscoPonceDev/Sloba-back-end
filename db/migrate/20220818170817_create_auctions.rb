class CreateAuctions < ActiveRecord::Migration[7.0]
  def change
    create_table :auctions do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.datetime :end_date

      t.timestamps
    end
  end
end
