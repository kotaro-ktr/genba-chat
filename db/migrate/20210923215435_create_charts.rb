class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.references :room, null: false, foreign_key: true
      t.timestamps
    end
  end
end
