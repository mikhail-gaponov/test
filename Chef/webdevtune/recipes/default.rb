#
# Cookbook Name:: webdevtune
# Recipe:: default
#
# Copyright 2013
#

shares = data_bag_item("samba", "shares")

shares["shares"].each do |k,v|
  if v.has_key?("path")
	execute "slapadd" do
	  command "chmod -R #{node.default['webdevtune']['sharemode']} #{v['path']}"
	end	
  end
end





