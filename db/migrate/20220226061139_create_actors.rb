class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.belongs_to :movie, index: true
      t.string     :name
      t.string     :filming_location
      t.string     :country

      t.timestamps
    end
  end
end
