json.array!(@le_blogs) do |le_blog|
  json.extract! le_blog, :id, :title, :author, :blog_entry
  json.url le_blog_url(le_blog, format: :json)
end
