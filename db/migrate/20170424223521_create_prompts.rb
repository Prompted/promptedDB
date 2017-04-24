class CreatePrompts < ActiveRecord::Migration[5.0]
  def change
    create_table :prompts do |t|
      t.string :type_of
      t.text :content
      t.string :status
      t.string :theme
      t.datetime :due_date
      t.datetime :voting_closed
    end
  end
end
