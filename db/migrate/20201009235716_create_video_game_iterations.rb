class CreateVideoGameIterations < ActiveRecord::Migration[6.0]
  def change
    create_table :video_game_iterations do |t|
      t.integer :year
      t.decimal :sales
      t.integer :rating
      t.references :video_game_title, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true

      t.timestamps
    end
  end
end
