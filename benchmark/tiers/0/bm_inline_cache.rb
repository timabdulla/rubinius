require 'benchmark'
require 'benchmark/ips'

class Class0; def called_method; end; end
class Class1; def called_method; end; end
class Class2; def called_method; end; end
class Class3; def called_method; end; end
class Class4; def called_method; end; end
class Class5; def called_method; end; end
class Class6; def called_method; end; end
class Class7; def called_method; end; end
class Class8; def called_method; end; end
class Class9; def called_method; end; end

def call_on1(obj)
  obj.called_method
end

def call_on2(obj)
  obj.called_method
end

def call_on3(obj)
  obj.called_method
end

def call_on4(obj)
  obj.called_method
end

def call_on5(obj)
  obj.called_method
end

def call_on6(obj)
  obj.called_method
end

def call_on7(obj)
  obj.called_method
end

def call_on8(obj)
  obj.called_method
end

def call_on9(obj)
  obj.called_method
end

def call_on10(obj)
  obj.called_method
end

object0 = Class0.new
object1 = Class1.new
object2 = Class2.new
object3 = Class3.new
object4 = Class4.new
object5 = Class5.new
object6 = Class6.new
object7 = Class7.new
object8 = Class8.new
object9 = Class9.new

# In order to keep the numbers as uniform as possible, we use the following strategy:
#
# * Each bench uses a different call_on to avoid poisoning each other
# * Each bench attempts five calls against the same object, to reduce loop skew
# * Polymorphic benchmarks rotate objects every five calls
# * Rotation is done manually to avoid multiple-assignment overhead

Benchmark.ips do |x|
  x.report "monomorphic call site" do |times|
    i = 0
    obj0 = object0
    while i < times
      call_on1(obj0)
      call_on1(obj0)
      call_on1(obj0)
      call_on1(obj0)
      call_on1(obj0)
      i += 1
    end
  end

  x.report "bimorphic call site" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    while i < times
      call_on2(obj0)
      call_on2(obj0)
      call_on2(obj0)
      call_on2(obj0)
      call_on2(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = objx
      i += 1
    end
  end

  x.report "polymorphic call site with 3 entrie" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    obj2 = object2
    while i < times
      call_on3(obj0)
      call_on3(obj0)
      call_on3(obj0)
      call_on3(obj0)
      call_on3(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = obj2
      obj2 = objx
      i += 1
    end
  end

  x.report "polymorphic call site with 4 entrie" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    obj2 = object2
    obj3 = object3
    while i < times
      call_on4(obj0)
      call_on4(obj0)
      call_on4(obj0)
      call_on4(obj0)
      call_on4(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = obj2
      obj2 = obj3
      obj3 = objx
      i += 1
    end
  end

  x.report "polymorphic call site with 5 entrie" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    obj2 = object2
    obj3 = object3
    obj4 = object4
    while i < times
      call_on5(obj0)
      call_on5(obj0)
      call_on5(obj0)
      call_on5(obj0)
      call_on5(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = obj2
      obj2 = obj3
      obj3 = obj4
      obj4 = objx
      i += 1
    end
  end

  x.report "polymorphic call site with 6 entrie" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    obj2 = object2
    obj3 = object3
    obj4 = object4
    obj5 = object5
    while i < times
      call_on6(obj0)
      call_on6(obj0)
      call_on6(obj0)
      call_on6(obj0)
      call_on6(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = obj2
      obj2 = obj3
      obj3 = obj4
      obj4 = obj5
      obj5 = objx
      i += 1
    end
  end

  x.report "polymorphic call site with 7 entrie" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    obj2 = object2
    obj3 = object3
    obj4 = object4
    obj5 = object5
    obj6 = object6
    while i < times
      call_on7(obj0)
      call_on7(obj0)
      call_on7(obj0)
      call_on7(obj0)
      call_on7(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = obj2
      obj2 = obj3
      obj3 = obj4
      obj4 = obj5
      obj5 = obj6
      obj6 = objx
      i += 1
    end
  end

  x.report "polymorphic call site with 8 entrie" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    obj2 = object2
    obj3 = object3
    obj4 = object4
    obj5 = object5
    obj6 = object6
    obj7 = object7
    while i < times
      call_on8(obj0)
      call_on8(obj0)
      call_on8(obj0)
      call_on8(obj0)
      call_on8(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = obj2
      obj2 = obj3
      obj3 = obj4
      obj4 = obj5
      obj5 = obj6
      obj6 = obj7
      obj7 = objx
      i += 1
    end
  end

  x.report "polymorphic call site with 9 entrie" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    obj2 = object2
    obj3 = object3
    obj4 = object4
    obj5 = object5
    obj6 = object6
    obj7 = object7
    obj8 = object8
    while i < times
      call_on9(obj0)
      call_on9(obj0)
      call_on9(obj0)
      call_on9(obj0)
      call_on9(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = obj2
      obj2 = obj3
      obj3 = obj4
      obj4 = obj5
      obj5 = obj6
      obj6 = obj7
      obj7 = obj8
      obj8 = objx
      i += 1
    end
  end

  x.report "megamorphic call site with 10 entrie" do |times|
    i = 0
    obj0 = object0
    obj1 = object1
    obj2 = object2
    obj3 = object3
    obj4 = object4
    obj5 = object5
    obj6 = object6
    obj7 = object7
    obj8 = object8
    obj9 = object9
    while i < times
      call_on10(obj0)
      call_on10(obj0)
      call_on10(obj0)
      call_on10(obj0)
      call_on10(obj0)
      objx = obj0
      obj0 = obj1
      obj1 = obj2
      obj2 = obj3
      obj3 = obj4
      obj4 = obj5
      obj5 = obj6
      obj6 = obj7
      obj7 = obj8
      obj8 = obj9
      obj9 = objx
      i += 1
    end
  end
end
