class ChangeDatetimeToDate < ActiveRecord::Migration
  def change
  	change_column(:tasks, :date, :datetime)
  end
end
