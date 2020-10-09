class CreateVideoGameTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :video_game_titles do |t|
      t.string :name
      t.references :publisher, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
