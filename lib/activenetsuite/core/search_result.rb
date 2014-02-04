module ActiveNetsuite

class SearchResult
  include MethodInflector

  def has_more?
    page_index < total_pages
  end
end

end

