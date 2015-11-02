class Student
  @@id =100000
  def initialize(name,age,gender,birthday,info="暂无信息")
      @id = @@id
      @@id += 1
      @name = name
      @age = age
      @gender = gender
      @birthday = birthday
      @info = info
  end

  attr_accessor :id,:name,:age,:gender,:birthday,:info#变量可读可写

end

print( "学号\t姓名\t年龄\t性别\t出生年月\t学生信息\t \n")


names = Array.new
names << "Jason" << "Sad" << "Adasd"<<"Mact"<<"Stack"<<"Jack"<<"Stan"<<"Mire"<<"Vile"<<"Haku"<<"Sb"

gender = Array.new
gender << "female" << "male"

age = 12+rand(9)



stu = Array.new
for i in 1..10
  stu << Student.new( names[rand(8)],age = 12+rand(9),gender[rand(2)],Time.new.strftime("%Y").to_i-age)
end


puts "10位同学的信息按照年龄排序如下："
stu.sort! { |a,b| a.age <=> b.age }
stu.each do |x|
  print("#{x.id}\t #{x.name}\t #{x.age}\t#{x.gender}\t #{x.birthday}\t  #{x.info}\t")
  puts
end


puts "删除年龄为13的学生："
stu.delete_if{|x| x.age == 13}
stu.each do |x|
  print("#{x.id}\t #{x.name}\t #{x.age}\t#{x.gender}\t #{x.birthday}\t  #{x.info}\t")
  puts
end


puts "增添一个新的学生信息："
stu << Student.new( names[rand(8)],4,gender[rand(2)],Time.new.strftime("%Y").to_i-age,"afwF")
stu.each do |x|
  print("#{x.id}\t #{x.name}\t #{x.age}\t#{x.gender}\t #{x.birthday}\t  #{x.info}\t")
  puts
end




p "修改名字为Stan的学生为F"

stu.select do |x|
  x.age == 18
end

stu.each do |x|
  print("#{x.id}\t #{x.name}\t #{x.age}\t#{x.gender}\t #{x.birthday}\t  #{x.info}\t")
  puts
end
