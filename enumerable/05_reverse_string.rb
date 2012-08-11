# -*- coding: utf-8 -*-
# 文字列を逆順にして返す関数を作成してください。
# ただし Array#reverse, Array#reverse! は使用禁止です。
def reverse_without_reverse str
  return str if str.empty?
  return str[-1] + reverse_without_reverse(str[0..-2])
end

def reverse_without_reverse2 str
  str.reverse # its String#reverse
end

def reverse_without_reverse3 str
  str.split(//).inject(""){|char,result| result + char}
end

def ok(data)
  expected = data.reverse
  actual = reverse_without_reverse3 data
  raise "expected #{expected} but #{actual}" unless actual == expected
  puts "ok: #{data}"
end

ok 'aaa'
ok ''
ok 'abc'
ok 'abcba'
ok 'aaabbbccc'
ok '1234567'
