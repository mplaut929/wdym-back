class CreateMemeCaptions < ActiveRecord::Migration[5.2]
  def change
    create_table :meme_captions do |t|
      t.integer :meme_id
      t.integer :caption_id

      t.timestamps
    end
  end
end
