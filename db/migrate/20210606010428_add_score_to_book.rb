class AddScoreToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :score, :float
  end
end
