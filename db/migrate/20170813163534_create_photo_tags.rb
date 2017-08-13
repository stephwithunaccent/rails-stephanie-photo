class CreatePhotoTags < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_tags do |t|
      t.integer :photo_id
      t.integer :tag_id
      t.references :photo, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
