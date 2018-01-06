class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.integer :director_id
      t.text :description
      t.integer :actor_id

      t.timestamps

    end
  end
end
