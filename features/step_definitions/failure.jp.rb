# language: ja

前提(/^ここに(.+)を書きます$/) do |name|
  @condition = name
end

もし(/^ここは(.+)$/) do |condition|
  puts "#{@condition} <-> #{condition} #{ @condition == condition}"
  if @condition == condition then
    @condition < condition
  end
end

ならば(/ここで(.+)します/) do |result|
  puts "#{@condition} #{@condition.length} #{result}"
  if @condition.length == 4 then
    expect(result).to eq("成功")
  else
    fail "#{@condition}: #{result}"
  end
end
