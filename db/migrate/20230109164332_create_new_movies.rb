class CreateNewMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :new_movies do |t|
      t.string :title
      t.string :description
      t.string :director
      t.string :rating

      t.timestamps
    end
  end
end
