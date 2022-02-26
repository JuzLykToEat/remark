class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string   :name
      t.string   :description
      t.integer  :year
      t.string   :director

      t.timestamps
    end
  end
end
