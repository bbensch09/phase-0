
def acct_group_sort( student_list, group_size )
  group_amt = ( student_list.size.to_f / group_size.to_f )
  group_amt == group_amt.to_int ? group_amt : group_amt += 1
  group_list = {}
  students_grouped = []
  for i in 0..group_amt - 1 do
    students_grouped << student_list.slice( group_size * i, group_size )
  end
  students_grouped.compact!
  for i in 1..group_amt do
    group_list[ i ] = students_grouped[ i - 1 ]
  end
  return group_list
end

def print_groups( group, group_num = nil )
  group.each{ |key,value| p "Group # #{key}: #{value}" }
end

students = [ 'a','b','c','d','e','f' ]

groups = acct_group_sort( students, 4 )
groups.each{ |key,value| p "Group # #{key}: #{value}" }