# -*- coding: utf-8 -*-
# テーマ：配列からハッシュを作る

$expected = { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}

def ensure_correct_answer answer
  raise answer.inspect unless $expected == answer
  puts "ok"
end

# (1) keyとvalueが交互に並んだ配列から
kv = ['key1', 'value1', 'key2', 'value2', 'key3', 'value3']

ensure_correct_answer kv.each_slice(2).each_with_object({}){|(k,v),hash| hash[k] = v }

# (2) keyとvalueがペアになって並んだ配列から
kvs = [['key1', 'value1'], ['key2', 'value2'], ['key3', 'value3']]

ensure_correct_answer kvs.each_with_object({}){|(k,v),hash| hash[k] = v }

# (3) keyの配列とvalueの配列から
keys = ['key1', 'key2', 'key3']
values =  ['value1', 'value2', 'value3']

ensure_correct_answer keys.zip(values).each_with_object({}){|(k,v),hash| hash[k] = v}

