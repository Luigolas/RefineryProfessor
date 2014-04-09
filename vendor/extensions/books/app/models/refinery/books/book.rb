module Refinery
  module Books
    class Book < Refinery::Core::BaseModel
      self.table_name = 'refinery_books'

      belongs_to :file, :class_name=>'Resource'

      attr_accessible :title, :author, :isbn, :abstract, :file_id, :position

      translates :title, :abstract

      class Translation
        attr_accessible :locale
      end

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
