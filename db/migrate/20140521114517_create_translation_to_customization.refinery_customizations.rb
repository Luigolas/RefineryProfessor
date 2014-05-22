# This migration comes from refinery_customizations (originally 2)
class CreateTranslationToCustomization < ActiveRecord::Migration
  def up
    Refinery::Customizations::Customization.create_translation_table! :name => :string, :desctiption => :string
  end
  def down
    Refinery::Customizations::Customization.drop_translation_table!
  end
end
