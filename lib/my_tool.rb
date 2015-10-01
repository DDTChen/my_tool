require "my_tool/icon"
require "my_tool/cucumber"

module MyTool
    # Your code goes here...
    puts "choose actions: "
    puts "  1. create iOS icon: "
    puts "  2. create Android icon: "
    puts "  3. build sencha to iOS: "
    puts "  4. build sencha to Android: "
    puts "  5. reset ios base: "
    puts "  6. reset android base: "
    puts "  7. create APNS PEM: "


    case gets.to_i
    when 1
        puts "create iOS icon"
        include Icon # 這個動作叫做 Mixin
        c = Creator.new("ios")
        c.genIcon
    when 2
        puts "create Android icon"
        include Icon # 這個動作叫做 Mixin
        c = Creator.new("android")
        c.genIcon
    when 3
        puts "build sencha to iOS"
        chatter = Test::BDD.new
        chatter.cucumberTask
    when 4
        puts "build sencha to Android2"
        `rm -rf xcode`
    when 5
        puts "等級 E"
    else
        puts "等級 ?"
    end

end
