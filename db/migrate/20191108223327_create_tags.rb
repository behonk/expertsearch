class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :member, foreign_key: true
      t.string :text
    end
  end
end
