module DocumentSearchEngine
  class Document < ActiveRecord::Base
    scope :full_text_search, -> (query) {
      where("MATCH(content) AGAINST(? IN BOOLEAN MODE)", "*D+ #{query}")
    }
  end
end
