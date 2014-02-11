module ActiveNetsuite

class SearchResult
  include MethodInflector

  def more?
    page_index < total_pages
  end
end

end
