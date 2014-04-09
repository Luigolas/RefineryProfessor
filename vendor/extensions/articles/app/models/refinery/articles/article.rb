module Refinery
  module Articles
    class Article < Refinery::Core::BaseModel
      self.table_name = 'refinery_articles'

      belongs_to :file, :class_name=>'Resource'

      attr_accessible :title, :authors, :reference, :abstract, :file_id, :position

      translates :title, :abstract

      class Translation
        attr_accessible :locale
      end

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
