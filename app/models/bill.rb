# == Schema Information
#
# Table name: bills
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  amount      :decimal(, )
#  day         :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


#inverse_of is to optimize SQL queries, doesn't add any functionality, just performance
class Bill < ActiveRecord::Base
	attr_accessible :name, :description, :amount, :day
	belongs_to :user, :inverse_of => :bills 
end
