class BlogReport < ActiveRecord::Base

  BLOG_TEMPLATE =<<EOS
---
layout: post
title: <%= title %>
date: <%= Time.now.strftime("%Y-%m-%d %H:%M:%S") %>
categories: jekyll update
---
<%= body %>
EOS

  def build
    docs = vars << BLOG_TEMPLATE
    src = docs.join
    ERB.new(src).result
  end

  # FIXME
  def self.posts_path
    "C:/Sites/github_pages/n-kats.github.io/_posts"
  end

  def fname
    created_at.strftime("%Y-%m-%d-#{file_title}.markdown")
  end

  def post
    file = "#{BlogReport::posts_path}/#{fname}"
    File.open(file,"w"){|f|f.puts build}
  end

  #NOTE danger!!
  def post_and_push
    puts "post and push"
    puts "ok? [y/n]"
    if gets.chomp == "y"
      post
      Dir.chdir BlogReport::posts_path
      Dir.chdir '..'
      p `git add ./_posts/#{fname}`
      p `git commit -m "post #{fname} #{Time.now}"`
      `git push origin`
    else
      puts "stop posting!"
    end

  end

  private
  def vars
    %w{file_title title body}.map do |var|
      "<% #{var} = \"#{self.send(var.to_sym)}\" %>"
    end
  end


end
