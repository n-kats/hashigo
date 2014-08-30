json.array!(@blog_reports) do |blog_report|
  json.extract! blog_report, :id, :file_title, :title, :body
  json.url blog_report_url(blog_report, format: :json)
end
