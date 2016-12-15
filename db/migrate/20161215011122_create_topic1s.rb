class CreateTopic1s < ActiveRecord::Migration[5.0]
  def change
    create_table :topic1s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
