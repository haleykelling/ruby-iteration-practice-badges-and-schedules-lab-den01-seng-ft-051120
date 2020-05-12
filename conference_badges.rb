# Write your code here.
require 'pry'


def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.map do |name|
        badge_maker(name)
    end
end

def assign_rooms(array)
    array_with_room_numbers = []
    array.each_with_index do |name, index|
        array_with_room_numbers << "Hello, #{name}! You'll be assigned to room #{index +1}!"
    end
    array_with_room_numbers
end

def printer(array)
    badge_array = batch_badge_creator(array)
    rooms_array = assign_rooms(array)
    badge_array.each do |badge|
        puts badge
    end
    rooms_array.each do |room|
        puts room
    end
end
