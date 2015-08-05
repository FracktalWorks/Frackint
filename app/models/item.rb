# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  code         :string
#  title        :string
#  description  :text
#  quantity     :integer
#  safetystock  :integer
#  reorderlevel :integer
#  leadtime     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Item < ActiveRecord::Base
end
