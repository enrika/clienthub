class CreateTypeFaces < ActiveRecord::Migration
  def change
    create_table :type_faces do |t|
      t.string :type_face_type
      t.string :type_face_link
      t.text :type_face_tags
      t.references :styleguide, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
