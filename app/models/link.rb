class Link < ActiveRecord::Base
  validates :name, presence: true
  validates_format_of :url, with: URI.regexp, on: :create
end
