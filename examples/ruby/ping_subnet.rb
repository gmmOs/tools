#!/usr/bin/ruby

done = []
ip_s = []
range = 1..254

range.each do |i|
  ip_address = "10.11.1.#{i}"
  ping = `ping -q -c 1 -W 3 #{ip_address}`.split(/\n+/)[2].split(/,/)[1].split(/ /)[1].to_i
  
  puts "#{ip_address} #{ping}"

end

