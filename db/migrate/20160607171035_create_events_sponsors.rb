class CreateEventsSponsors < ActiveRecord::Migration
  def change
    create_table :events_sponsors do |t|
      t.references :event, index: true, foreign_key: true
      t.references :sponsor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
