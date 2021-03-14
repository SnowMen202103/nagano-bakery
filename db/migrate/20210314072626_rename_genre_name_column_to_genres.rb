class RenameGenreNameColumnToGenres < ActiveRecord::Migration[5.0]
  def change
    rename_column :genres, :genre_name, :name
  end
end
