json.searchTerm @result.search_term
json.matchStatus @result.match_status
json.matches @result.matches do |match|
  json.sourceName match[0]
  json.id match[1]
end
