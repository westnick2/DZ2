include Math

class DZClass

  def dz1(a,b)
    {summa: a+b,diff: a-b,multiply: a*b}
  end

  def dz2(x,y)
    {value: (x.abs - y.abs)/(1+(x*y).abs)}
  end

  def dz3(x)
    {volume: x**3,surface_area: x**2}
  end

  def dz4(x,y)
    {sr_arifmet: (x+y)/2, sr_geometr: Math.sqrt(x*y)}
  end

  def dz5(x,y)
    {sr_arifmet: (x+y)/2, sr_geometr: Math.sqrt(x.abs*y.abs)}
  end

  def dz6(x,y)
    {gipotenuza: Math.sqrt(x**2+y**2), square: (x.abs*y.abs)/2}
  end

  def dz7(v1,t1,v2,t2)
    {volume_M3: (v1+v2)/1000, temperature: (v1*1*t1+v2*1*t2)/(v1*1+v2*1) }
  end

  def dz8(n,r)
    {Perimetr: r*Math.tan(360/(2*n))*2*n}
  end

  def dz9(r1,r2,r3)
    {resistance: (r1*r2*r3)/(r2*r3+r1*r3+r1*r2)}
  end

  def dz10(h)
    {falling_time: Math.sqrt(2*h/9.8) }
  end

  def dz11(x,y,z)
    {a: (Math.sqrt((x-1).abs)-(y.abs)**1.0/3.0)/(1+x**2/2+y**2/4) , b: x*(Math.atan(z)+Math.exp(-x-3))}
  end

  def dz12(a)
    {triangel_square: a**2*Math.sqrt(3)/4}
  end

  def dz13(l)
    {Period_mayatnika: 2*Math::PI * Math.sqrt(l)/9.8}
  end

  def dz14(m1,m2,r,g)
    if r.nonzero?
      force = g.to_f*m1*m2/r**2
    else
      force = 0
    end
    {force_of_gravity: force}
  end

  def dz15(a,b)
    c = Math.sqrt(a**2-b**2)
    p = (a+b+c)/2
    r = Math.sqrt((p-a)*(p-b)*(p-c)/p)
    return {katet2: c, radius: r}
  end

  def dz16(p)
    {square: p**2/(8*Math::PI)}
  end

  def dz17(r1,r2)
    {circle_square: Math::PI*(r2**2-r1**2)/2}
  end

  def dz18(alpha,beta,gama,radius)
    a = 2*radius* Math.sin(alpha*Math::PI/180)
    b = 2*radius* Math.sin(beta*Math::PI/180)
    c = 2*radius* Math.sin(gama*Math::PI/180)
    return {a: a,b: b,c: c}
  end

  def dz19(v1, v2, a1, a2, s)
    t = ((-2*(v1+v2))+Math.sqrt(4*((v1+v2)**2)+8*(a1+a2)*s))/2*(a1+a2);
    {t: t}
  end

  def dz20(a,d,n)
    {summa: (2*a + d*(n-1))*n/2}
  end

  def dz33(x,y)
    a = [x,y]
    var_max = a.max()
    var_min = a.min()
    {max: var_max, min:var_min}
  end

  def dz34(x,y,z)
    a = [x,y,z]
    var_max = a.max()
    var_min = a.min()
    [{max: var_max}, {min:var_min, max1: var_max}]
  end

  def dz35(x,y,z)
    a = [x+y+z,x*y*z]
    b = [x+y+z/2.0,x*y*z]
    var_max = a.max()
    var_min = b.min()**2+1
    {max: var_max, min:var_min }
  end

  def dz36(a,b,c)
    if a<b &&b<c
      return {a_Less_b_Less_c: true}
    else
      return {a_Less_b_Less_c: false}
    end
  end

  def dz37(a,b,c)
    if c<=b &&b<=a
      return [a,b,c].each {|x| x*2}
    else
      return [a,b,c].each {|x| x.abs}
    end
  end

  def dz38(x,y)
    if x>y
      z = x-y
    else
      z = y-x+1
    end
    {z: z}
  end

  def dz39(x,y)
    if x>y
      z =x
    else
      z = [x,y]
    end
    {z: z}
  end

  def dz40(x,y)
    x=0 if x <= y
    {result: [x,y]}
  end

  def dz41(x,y,z)
    {res: [x,y,z].select {|a| (a>1) && (a<3) }}
  end

  def dz42(x,y)
    if x == y
      return "must be x!=y"
    elsif x<y
      x_tmp = x
      x = (x+y)/2.0
      y = 2*x_tmp*y
    else
      y_tmp = y
      y = (x+y)/2.0
      x = 2*y_tmp*x
    end
    {res: [x,y]}
  end

  def dz43(x,y,z)
    {res: [x,y,z].each {|a| a = a**2 if a >= 0} }
  end

  def dz77(n)
    fact = n.downto(1).inject(:*)
    {n2: 2**n, fact: fact}
  end

  def dz196()
    ar = []
    x =10
    1.upto(50) do
      ar.push(x)
      x+=1
    end
    res = {arB: ar.each.map { |x| if x.odd?
                              x=x*2
                            else
                              x = x
                            end } }
    # puts "dz196: #{res}"
  end

  def dz200(a,n)
    if !((1..n).to_a.include?(a))
      return 0
    else
      i = 0
      (1..n).to_a.each do |x|
        if x==a
          return i
        end
        i+=1
      end
    end
    {res: "no #{a} in sequence"}

  end

  def dz204(n)
    score = []
    1.upto(n) {|x| score.push (x+2) }
    score.sort!.shift
    score.pop
    {score: score.inject{ |sum, el| sum + el }.to_f/score.size }
  end

  def dz207(str)
   {res: str.chars.delete_if { |x| x=="0"||x=="5" }.join }
  end

  def dz224(n)
    {res: (1..n).select { |x| x = x if (n % x).zero?} }
  end

  def dz225(n)
    {res: (1..n).select { |x| (n % x**2).zero? && (n % x**3).nonzero?} }
  end

  def dz251(str)
    {res:str.chars.count("x")}
  end

  def dz258(str,char1)
    {res: str.delete(char1)}
  end

  def dz259(str,char1)
    ar = str.chars.delete_if{|x| x== char1 }
    {res: ar.map { |x| x = x + x if x!=char1 }.join }
  end

  def dz330(n)
    res = []
    1.upto(n) do |x|
      ar = (1..x).select { |y| (n % y).zero? ? y = y : y = 0}
      if x.equal?(ar.sum())
        res.push(x)
      end
    end
    {res_perfect_num: res}
  end

  def dz331(num)
    res  = []
    1.upto(num) do |x|
      1.upto(num) do |y|
        1.upto(num) do |z|
          summa = (x**2) + (y**2) + (z**2)
          res.push([x,y,z]) if summa.equal?(num)
        end
      end
    end
    return {res_num: res}
  end

  def dz332(num)
    res  = []
    1.upto(num) do |x|
      1.upto(num) do |y|
        1.upto(num) do |z|
          1.upto(num) do |t|
          summa = (x**2) + (y**2) + (z**2)+(t**2)
          res.push([x,y,z,t]) if summa.equal?(num)
          end
        end
      end
    end
    return {res: res}
  end

  def dz347(array)
    mmin = array.min
    mmax = array.max
    enumer = mmin..mmax
    {numbers: enumer.reject { |x| array.include?(x) } }
  end

  def dz434(aarr,barr)
    ares = aarr.map.with_index { |x, i| i > aarr.index(aarr.max)? x = 0.5 : x }
    bres = barr.map.with_index { |x, i| i > barr.index(barr.max)? x = 0.5 : x}
    {ares: ares, bres: bres}
  end

  def dz435(aarr,barr,k)
    aarr[aarr.index(aarr.max)] = k unless aarr.include?(k)
    barr[barr.index(barr.max)] = k unless barr.include?(k)
    return {aarr: aarr, barr: barr}
  end

  def dz462(char1)
      if (('a'..'z').include?(char1)) || (('A'..'Z').include?(char1))
        return {is_a_letter?: true }
      else
        return {is_a_letter?: false }
      end
  end

  def dz468(str1,str2)
    flag = false
    str2.chars.each do |x|
        flag = true if str1.include?(x)
        return {sym: x, index: str1.chars.index(x)} if flag
    end
    return -1 unless flag
  end

 def dz469(str1,width)
  delta = width - str1.size
  str1.chars.select { |char| char == " " ? (char << " ") : (char = char) }.join
 end

 def assert(expected:, actual:)
   expected == actual
 end

 def test_passed?(expected:, actual:)
   assert(expected: expected, actual: actual)? true : false
 end

end
#********************************************************************************
# $stdout = File.open('input_data.txt', 'w')
# $stderr = File.open('errors_log.txt', 'a')
#
def case_method(numdz)
  test_passed = []
  case numdz
  when "1"
    a = -2.0
    b = -3.0
    rezult = DZClass.new.dz1(a.to_f,b.to_f)
    expected_value = {summa: 5.0, diff:-1.0, multiply: 6.0}
    # data = []
    # str =""
    # File.open('output.txt', 'r') do |file|
    #   file.each_line { |x| str = x.delete "\n" }
    # end
    # data = str.split(";")
    # puts "array:" + data.to_s

  when "2"
    x = -3
    y = -3
    rezult = DZClass.new.dz2(x.to_f,y.to_f)
    expected_value = {value: 0}

  when "3"
    x = 10
    rezult = DZClass.new.dz3(x.to_f)
    expected_value =  {volume: 10**3,surface_area: 10**2}

  when "4"
    x = 10
    y = 20
    rezult = DZClass.new.dz4(x.to_f,y.to_f)
    expected_value =  {sr_arifmet: 15.0, sr_geometr: Math.sqrt(10.0*20.0)}

  when "5"
    x = 10
    y = 10
    rezult = DZClass.new.dz5(x.to_f,y.to_f)
    expected_value = {sr_arifmet: 10.0, sr_geometr: 10.0}

  when "6"
    katet1 = 3
    katet2 = 4
    rezult = DZClass.new.dz6(x.to_f,y.to_f)
    expected_value = {gipotenuza: 5, square: 6.0}

  when "7"
    v1 = 10
    t1 = 40
    v2 = 20
    t2 = 20
    rezult = DZClass.new.dz7(v1.to_f,t1.to_f,v2.to_f,t2.to_f)
    expected_value = {volume_M3: 30/1000, temperature: (10*1*40+20*1*20)/(10*1+20*1) }

  when "8"
    n = 8
    r = 5
    rezult = DZClass.new.dz8(n.to_i,r.to_f)
    expected_value = {Perimetr: 5*Math.tan(360/(2*8))*2*8}

  when "9"
    r1 = 10
    r2 = 15
    r3 = 25
    rezult = DZClass.new.dz9(r1.to_f,r2.to_f,r3.to_f)
    expected_value = {resistance: (10*15*25)/(15*25+10*25+10*15)}

  when "10"
    h = 100
    rezult = DZClass.new.dz10(h.to_f)
    expected_value = {falling_time: Math.sqrt(2*100/9.8) }

  when "11"
    x = 10
    y = 12
    z = 15
    rezult = DZClass.new.dz11(x.to_f,y.to_f,z.to_f)
    expected_value = {a: (Math.sqrt((10-1).abs)-(12.abs)**1.0/3.0)/(1+10**2/2+12**2/4) , b: 10*(Math.atan(15)+Math.exp(-10-3))}

  when "12"
    a = 10
    rezult = DZClass.new.dz12(a.to_f)
    expected_value = {triangel_square: 10**2*Math.sqrt(3)/4}

  when "13"
    l = 20
    rezult = DZClass.new.dz13(l.to_f)
    expected_value = {Period_mayatnika: 2*Math::PI * Math.sqrt(20)/9.8}

  when "14"
    m1 = 100
    m2 = 200
    r = 10
    g = 6.7385/10**11
    rezult = DZClass.new.dz14(m1.to_f,m2.to_f,r.to_f,g)
    expected_value = {force_of_gravity: g.to_f*100*200/10**2}
  when "15"
    gipotenuza = 5
    katet = 4
    rezult = DZClass.new.dz15(gipotenuza.to_f,katet.to_f)

    katet2 = Math.sqrt(gipotenuza**2-katet**2)
    p = (gipotenuza+katet+katet2)/2
    r = Math.sqrt((p-gipotenuza)*(p-katet)*(p-katet2)/p)
    expected_value = {katet2: katet2, radius: r}

  when "16"
    dlina_okruzhnosti = 100
    rezult = DZClass.new.dz16(dlina_okruzhnosti.to_f)
    expected_value = {square: 100**2/(8*Math::PI)}

  when "17"
    r1 =20
    r2 = 30
    rezult = DZClass.new.dz17(r1.to_f,r2.to_f)
    expected_value = {circle_square: Math::PI*(30**2-20**2)/2}

  when "18"
    alpha = 60
    beta  = 60
    gama  = 60
    radius = 5
    rezult = DZClass.new.dz18(alpha.to_f,beta.to_f,gama.to_f,radius.to_f)
    a = 2*5* Math.sin(60*Math::PI/180)
    b = 2*5* Math.sin(60*Math::PI/180)
    c = 2*5* Math.sin(60*Math::PI/180)
    expected_value = {a: a,b: b,c: c}

  when "19"
    v1 = 50
    v2 = 60
    a1 = 10
    a2 = 5
    s = 1000
    rezult = DZClass.new.dz19(v1.to_f, v2.to_f, a1.to_f, a2.to_f, s.to_f)
    t = ((-2*(v1+v2))+Math.sqrt(4*((v1+v2)**2)+8*(a1+a2)*s))/2*(a1+a2);
    expected_value = {t: t}

  when "20"
    a = 3
    d = 2
    n = 20
    rezult = DZClass.new.dz20(a.to_i,d.to_i,n.to_i)
    expected_value = {summa: (2*3 + 2*(20-1))*20/2}

  when "33"
    x = 20
    y = 100
    rezult = DZClass.new.dz33(x.to_f,y.to_f)
    expected_value = {max: 100, min:20}
    #********************
  when "34"
    x = 10
    y = 20
    z = 30
    rezult = DZClass.new.dz34(x.to_f,y.to_f,z.to_f)
    expected_value = [{max: 30}, {min:10, max1: 30}]

  when "35"
    x = 10
    y = 20
    z = 30
    rezult = DZClass.new.dz35(x.to_f,y.to_f,z.to_f)
    a = [x+y+z,x*y*z]
    b = [x+y+z/2.0,x*y*z]
    var_max = a.max()
    var_min = b.min()**2+1
    expected_value = {max: var_max, min:var_min }

  when "36"
    a = 10
    b = 20
    c = 30
    rezult = DZClass.new.dz36(a.to_f,b.to_f,c.to_f)
    expected_value = {a_Less_b_Less_c: true}

  when "37"
    a = 30
    b = 20
    c = 10
    rezult = DZClass.new.dz37(a.to_f,b.to_f,c.to_f)
    expected_value = [900,400,100]
    #**************************************************
  when "38"
    x = 50
    y = 20
    rezult = DZClass.new.dz38(x.to_f,y.to_f)
    expected_value = {z: 30}

  when "39"
    x = 50
    y = 100
    rezult = DZClass.new.dz39(x.to_f,y.to_f)
    expected_value = {z: [50,100]}

  when "40"
    x = 10
    y = 30
    rezult = DZClass.new.dz40(x.to_f,y.to_f)
    expected_value = {result: [0,30]}

  when "41"
    x = 1
    y = 2
    z = 3
    rezult = DZClass.new.dz41(x.to_f,y.to_f,z.to_f)
    expected_value = {res: [2]}

  when "42"
    x = 10
    y = 20
    rezult = DZClass.new.dz42(x.to_f, y.to_f)
    expected_value = {res: [15,400]}

  when "43"
    x = 2
    y = 3
    z = 5
    rezult = DZClass.new.dz43(x.to_f,y.to_f,z.to_f)
    expected_value = {res: [4,9,25]}

  when "77"
    n = 5
    rezult = DZClass.new.dz77(n.to_i)
    expected_value = {n2: 32, fact: 120}

  when "196"
    rezult = DZClass.new.dz196()
    expected_value = {:arB=>[10, 22, 12, 26, 14, 30, 16, 34, 18, 38, 20, 42, 22, 46, 24, 50, 26, 54, 28, 58, 30, 62, 32, 66, 34, 70, 36, 74, 38, 78, 40, 82, 42, 86, 44, 90, 46, 94, 48, 98, 50, 102, 52, 106, 54, 110, 56, 114, 58, 118]}

  when "200"
    a = 10
    n = 20
    rezult = DZClass.new.dz200(a.to_i,n.to_i)
    expected_value = 9

  when "204"
    n = 20
    rezult = DZClass.new.dz204(n.to_i)
    expected_value = {:score=>12.5}

  when "207"
    str = "59094715"
    rezult = DZClass.new.dz207(str)
    expected_value = {res: "99471" }

  when "224"
    n = 111
    rezult = DZClass.new.dz224(n.to_i)
    expected_value = {:res=>[1, 3, 37, 111]}

  when "225"
    n = 625
    rezult = DZClass.new.dz225(n.to_i)
    expected_value = {:res=>[25]}
  when "251"
    str = "xkgiuxytuxgxgjkhkx"
    rezult = DZClass.new.dz251(str)
    expected_value = {:res=>5}

  when "258"
    str = "qrabcdceyrejtabcdasryt"
    char1 = "abcd"
    rezult = DZClass.new.dz258(str,char1)
    expected_value = {:res=>"qreyrejtsryt"}
    #*********************************************
  when "259"
    str = "ge*t*s.*c*h**o*m*p"
    char1 = "*"
    rezult = DZClass.new.dz259(str,char1)
    expected_value = {:res=>"ggeettss..cchhoommpp"}

  when "330"
    n = 1000
    rezult = DZClass.new.dz330(n.to_i)
    expected_value = {:res_perfect_num=>[1]}

  when "331"
    num = 300
    rezult = DZClass.new.dz331(num.to_i)
    expected_value = {:res_num=>[[2, 10, 14], [2, 14, 10], [10, 2, 14], [10, 10, 10], [10, 14, 2], [14, 2, 10], [14, 10, 2]]}

  when "332"
    num = 100
    rezult = DZClass.new.dz332(num.to_i)
    # puts "332: #{rezult}"
    expected_value = {:res=>[[1, 1, 7, 7], [1, 3, 3, 9], [1, 3, 9, 3], [1, 5, 5, 7], [1, 5, 7, 5], [1, 7, 1, 7], [1, 7, 5, 5],
                             [1, 7, 7, 1], [1, 9, 3, 3], [2, 4, 4, 8], [2, 4, 8, 4], [2, 8, 4, 4], [3, 1, 3, 9], [3, 1, 9, 3],
                             [3, 3, 1, 9], [3, 3, 9, 1], [3, 9, 1, 3], [3, 9, 3, 1], [4, 2, 4, 8], [4, 2, 8, 4], [4, 4, 2, 8],
                             [4, 4, 8, 2], [4, 8, 2, 4], [4, 8, 4, 2], [5, 1, 5, 7], [5, 1, 7, 5], [5, 5, 1, 7], [5, 5, 5, 5],
                             [5, 5, 7, 1], [5, 7, 1, 5], [5, 7, 5, 1], [7, 1, 1, 7], [7, 1, 5, 5], [7, 1, 7, 1], [7, 5, 1, 5],
                             [7, 5, 5, 1], [7, 7, 1, 1], [8, 2, 4, 4], [8, 4, 2, 4], [8, 4, 4, 2], [9, 1, 3, 3], [9, 3, 1, 3],
                             [9, 3, 3, 1]]}

  when "347"
    ar = [3,4,5,1,6,7,8,19]
    rezult = DZClass.new.dz347(ar)
    expected_value = {:numbers=>[2, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]}
    #**************************************************
  when "434"
    aarray = [3,4,5,21,6,7,8,19]
    barray = [31,4,5,1,6,7,8,19]
    rezult = DZClass.new.dz434(aarray,barray)
    expected_value = {:ares=>[3, 4, 5, 21, 0.5, 0.5, 0.5, 0.5], :bres=>[31, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]}

  when "435"
    aarray = [3,4,5,21,6,7,8,19]
    barray = [31,4,5,1,6,7,8,19]
    k = 4
    rezult = DZClass.new.dz435(aarray,barray,k.to_i)
    expected_value = {:aarr=>[3, 4, 5, 21, 6, 7, 8, 19], :barr=>[31, 4, 5, 1, 6, 7, 8, 19]}

  when "462"
    char1 = "g"
    rezult = DZClass.new.dz462(char1)
    expected_value = {is_a_letter?: true }

  when "468"
    str1 = "Hello world!"
    str2 = "World hello"
    rezult = DZClass.new.dz468(str1,str2)
    expected_value = {:sym=>"o", :index=>4}

  when "469"
    str1 = "Hello world good morning!"
    width = 25
    rezult = DZClass.new.dz469(str1, width.to_i)
    expected_value = "Hello  world  good  morning!"
  else
    rezult = "There are no such dz number!"
  end
  test_passed[numdz.to_i] = DZClass.new.test_passed?(expected: expected_value,actual: rezult)
  File.open('output.txt', 'a') do |file|
    file.puts("dz#{numdz};#{rezult};#{test_passed[numdz.to_i]}")
  end
  # puts "dz #{numdz}"
  # puts "#{rezult}"

end
#
print "Enter exercise num [1..20,33..43,77,196,200,204,207,224,225,251,258,259,330,331,332,347,434,435,462,468,469]: "
 # numdz = gets.chomp

exercises = [1..20,33..43,77,196,200,204,205,224,225,251,258,259,330,331,332,347,434,435,462,468,469]
exercises.each do |el|
  if el.is_a? Enumerable
    el.min.upto(el.max) do |ind|
      numdz = ind.to_s
      puts numdz
      case_method(numdz)
    end
  elsif el.is_a? Integer
    numdz = el.to_s
    puts numdz
    case_method(numdz)
  end


end

