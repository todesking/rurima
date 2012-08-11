[:foo, :bar, :hoge, :piyo].each_with_object({}){|type,result|
  result[type] = SomeModel.where(type: type).map(&:to_hash)
}
