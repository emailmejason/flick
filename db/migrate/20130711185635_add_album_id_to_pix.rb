class AddAlbumIdToPix < ActiveRecord::Migration
  def change
    add_column :pixes, :album_id, :integer
  end
end
