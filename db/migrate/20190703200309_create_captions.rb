class CreateCaptions < ActiveRecord::Migration[5.2]
  def change
    create_table :captions do |t|
      t.string :title

      t.timestamps
    end
  end
end
