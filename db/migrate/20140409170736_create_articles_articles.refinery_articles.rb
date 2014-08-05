# This migration comes from refinery_articles (originally 1)
class CreateArticlesArticles < ActiveRecord::Migration

  def up
    create_table :refinery_articles do |t|
      t.string :title
      t.string :authors
      t.string :reference
      t.text :abstract
      t.integer :file_id
      t.integer :position

      t.timestamps
    end

    Refinery::Articles::Article.create_translation_table! :title => :string, :abstract => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-articles"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/articles/articles"})
    end

    drop_table :refinery_articles

    Refinery::Articles::Article.drop_translation_table!

  end

end
