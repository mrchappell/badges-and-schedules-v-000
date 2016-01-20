def badge_maker(speaker)
  "Hello, my name is #{speaker}."
end

def batch_badge_creator(array)
  badge_messages = []
  array.each do |message|
    badge_messages << badge_maker(message)
  end
  badge_messages
end

def assign_rooms(array)
  room_assign = []
  array.each do |speaker|
    room_assign << "Hello, #{speaker}! You'll be assigned to room #{array.index(speaker)+1}!"
  end
  room_assign
end

def printer(array)
  1.upto(array.length) do |x|
    puts batch_badge_creator(array)[x-1]
    puts assign_rooms(array)[x-1]
  end
end