class ChangePlaceIdToInteger < ActiveRecord::Migration[5.2]
  def change
change_column :photos, :place_id, :integer, using: 'place_id::integer'
  end
end
