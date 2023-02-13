#!/usr/bin/ruby
#based on Thamrius@github ping.rb

finished = []
ip_s = []
range = 1..254

range.each do |i|

  ip_address = "10.11.1.#{i}"
  Thread.new do
    ping = `ping -q -c 1 -W 8 #{ip_address}`.split(/\n+/)[2].split(/,/)[1].split(/ /)[1].to_i > 0 and ip_s << ip_address
    finished << ip_address
  end
end

#until finished.count == range.count
#  print "\r%#{(finished.count/range.count.to_f * 100).round}"
#  sleep 0.1
#end

ip_s = ip_s.sort_by!{|ip| ip.split('.').map{|octet| octet.to_i}}
finished = finished.sort_by!{|ip| ip.split('.').map{|octet| octet.to_i}}

finished.each do |ip|
  if ip_s.include? ip
    print ("#{ip} 1\n")
  else
    print ("#{ip} 0\n")
  end
end
