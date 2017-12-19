def badge_maker (name)
   "Hello, my name is #{name}."
end


def batch_badge_creator (attendees)
  att_Array=[]

  attendees.each do |names|
    att_Array.push (badge_maker(names))
  end
  att_Array
end


def assign_rooms(attendees)
  room_Array=[]

  attendees.each_with_index do |names, index|
    room_Array.push("Hello, #{names}! You'll be assigned to room #{index+1}!")
  end
  room_Array
end

def printer(attendees)

  batch_badge_creator(attendees).each do |line|
    puts "#{line}"
  end

  assign_rooms(attendees).each do |rooms|
    puts "#{rooms}"
  end
end
