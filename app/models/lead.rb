class Lead < ActiveRecord::Base
  belongs_to :stage

  def self.to_csv(options = {})
  	CSV.generate(options) do |csv|
  		csv << column_names
  		all.each do |lead|
  			csv << lead.attributes.values_at(*column_names)
  		end
  	end
  end
end
