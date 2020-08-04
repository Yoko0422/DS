class CreateMains < ActiveRecord::Migration[5.2]
  def change
    create_table :mains do |t|
      t.string :title
      t.string :name
      t.string :text
      t.string :file1
      t.string :file2
      t.string :file3
      t.string :file4

      t.timestamps
    end
  end
end
