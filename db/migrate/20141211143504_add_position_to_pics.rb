class AddPositionToPics < ActiveRecord::Migration
  def change
    add_column :pics, :position, :string
    add_column :pics, :opacity, :integer
  end
end
