class DZClass
def dz1(a,b)
  {summa: a+b,diff: a-b,multiply: a*b}
end
end
class Test_File
  def write
    data = []

    File.open('source.txt', 'r') do |file|
      file.each_line { |x| data.push(x) }
    end

    changed_data = data.map do |x|
      # TODO: Change data
    end

    File.open('output.txt', 'w') do |file|
      changed_data.each { |x| file.puts(x) }
    end

  end
end
$stdout = File.open('выходные данные.txt', 'w')
$stderr = File.open('сообщения об ошибках.txt', 'a')

puts 'Очень важные данные,'
puts 'которые будут сохранены в файл'
raise 'Принудительно вызываем ошибку'
