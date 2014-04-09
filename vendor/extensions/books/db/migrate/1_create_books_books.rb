class CreateBooksBooks < ActiveRecord::Migration

  def up
    create_table :refinery_books do |t|
      t.string :title
      t.string :author
      t.string :isbn
      t.text :abstract
      t.integer :file_id
      t.integer :position

      t.timestamps
    end

    Refinery::Books::Book.create_translation_table! :title => :string, :abstract => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-books"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/books/books"})
    end

    drop_table :refinery_books

    Refinery::Books::Book.drop_translation_table!

  end

end
