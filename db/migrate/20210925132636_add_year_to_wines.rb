class AddYearToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :year, :integer
  end
end
