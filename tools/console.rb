require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ark = Student.new("Ark")
bry = Student.new("Bry")
ced = Student.new("Ced")
drl = Student.new("Drl")
ele = Student.new("Ele")
frk = Student.new("Frk")
gax = Student.new("Gax")
hoy = Student.new("Hoy")

izy = Instructor.new("Izy")
igy = Instructor.new("Igy")
jre = Instructor.new("Jre")
kly = Instructor.new("Kly")

tst1 = BoatingTest.new(ark, "TST", "failed", izy)
tst2 = BoatingTest.new(drl, "TST", "pending", kly)
tst3 = BoatingTest.new(ele, "TST", "passed", igy)
tzt1 = BoatingTest.new(bry, "TZT", "failed", igy)
tzt2 = BoatingTest.new(frk, "TZT", "pending", jre)
tzt3 = BoatingTest.new(gax, "TZT", "passing", kly)
tnt1 = BoatingTest.new(ced, "TNT", "failed", jre)
tnt2 = BoatingTest.new(ark, "TNT", "pending", jre)
tnt3 = BoatingTest.new(bry, "TNT", "passed", igy)
tpt1 = BoatingTest.new(bry, "TPT", "failed", kly)
tpt2 = BoatingTest.new(hoy, "TPT", "pending", igy)
tpt3 = BoatingTest.new(ark, "TPT", "passed", jre)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

