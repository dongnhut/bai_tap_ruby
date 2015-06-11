def select_closest(list, target)                               
    return (list.map {|x| [(x.to_f - target).abs, x]}).min[1]  
end                                                            

select_list = ["77.5", "80", "82.5", "85", "87.5", "90", "95", "100", "105"] 

puts select_closest(select_list, 81)