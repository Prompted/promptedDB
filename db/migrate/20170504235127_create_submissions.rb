class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.string :type_of
      t.string :url
      t.datetime :submitted_at
      t.boolean :flagged_as_inappropriate,    default: false
      t.string :audience_flag,                default: "all"
      t.belongs_to :user, foreign_key: true
      t.belongs_to :prompt, foreign_key: true
    end
  end
end
