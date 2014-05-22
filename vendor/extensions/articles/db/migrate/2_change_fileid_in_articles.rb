class ChangeFileidInArticles < ActiveRecord::Migration
  def up
    change_column :refinery_articles, :file_id, :string
  end

  def down
    change_column :refinery_articles, :file_id, :integer
  end
end