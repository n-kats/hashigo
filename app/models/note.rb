class Note < ActiveRecord::Base
  belongs_to :upper, class_name: :Note
  has_many :lowers, class_name: :Note, foreign_key: :upper_id
  alias :up :upper
  alias :up= :upper=
  alias :down :lowers

end
