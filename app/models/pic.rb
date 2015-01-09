class Pic < ActiveRecord::Base
  mount_uploader :file, AvatarUploader

  CORNERS = %w(NorthWestGravity NorthEastGravity SouthWestGravity SouthEastGravity)

  attr_accessor :alpha
end
