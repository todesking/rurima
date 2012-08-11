# Somemodel.conditions => Array or nil
# target => given parameter (must be symbol)

Record = Struct.new(:conditions)

records = [Record.new(nil), Record.new([:a,:b]), Record.new([:a,:c])] # SomeModel.where(some_flag: true)

target = :b

result = records.select{|r| !r.conditions || r.conditions.include?(target)}

puts result.inspect
