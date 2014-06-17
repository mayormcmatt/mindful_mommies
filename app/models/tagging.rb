class Tagging < ActiveRecord::Base
  # join table: relationship goes both ways, to article and tag
  belongs_to :article
  belongs_to :tag
end
