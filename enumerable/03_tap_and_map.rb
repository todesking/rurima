# @option is parsed query parameter
# e.g. { 'foo' => 'bar', 'hoge' => 'piyo'

require 'active_support'

@option = {'fOO' => 'bar', 'Hoge' => 'piyo'}

p @option.map{|k,v|[k.to_s.downcase,v]}.each_with_object({}){|(k,v),h|h[k]=v}
