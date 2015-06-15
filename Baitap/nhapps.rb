require './phanso'
 nhap
 arr.each do |name|
  puts "#{name}!"
end
p=Phanso.new($tu1,$mau1,$tu2,$mau2)
# puts $tu1
# puts $mau1
# puts $tu2
# puts $mau2
 #p= Phanso.new($tu1,$mau1,$tu2,$mau2)
 #p= Phanso.new(1,3,4,5)

puts p.respond_to?("cong")
p.cong
p.inphanso
p.tru
p.inphanso
p.nhan
p.inphanso
p.chia
p.inphanso