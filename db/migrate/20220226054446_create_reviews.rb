class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :movie, index: true
      t.string     :user
      t.integer    :stars
      t.string     :review

      t.timestamps
    end
  end
end
