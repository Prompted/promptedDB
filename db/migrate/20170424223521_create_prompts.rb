class CreatePrompts < ActiveRecord::Migration[5.0]
  def change
    create_table :prompts do |t|
      t.string :type_of, default: 'unassigned'
      t.text :content
      t.string :status, default: 'upcomming'
      t.string :theme
      t.datetime :due_date
      t.datetime :voting_closed
    end
  end
end
