
# Look at Task 5.1 T Music Records for an example of how to create the following

class Track
	attr_accessor :title, :file_location
end

# Returns an array of tracks read from the given file
def read_tracks music_file

	count = music_file.gets().to_i
  tracks = Array.new

  # Put a while loop here which increments an index to read the tracks
  i=0;
  while i<count
    track = read_track(music_file)
    tracks << track
    i+=1
  end
	return tracks
end

# reads in a single track from the given file.
def read_track a_file
  # complete this function
  # you need to create a Track here - see 5.1 T, Music Record for this too.
  track=Track.new
  track.title=a_file.gets().to_s
  track.file_location=a_file.gets().to_s
  return track
end


# Takes an array of tracks and prints them to the terminal
def print_tracks tracks

  # Use a while loop with a control variable index
  # to print each track. Use tracks.length to determine how
  # many times to loop.
  i=0
  while i<tracks.length
    print_track(tracks[i])
    i+=1
  end
  # Print each track use: tracks[index] to get each track record
end

# Takes a single track and prints it to the terminal
def print_track track
  puts('Track title is: ' + track.title)
	puts('Track file location is: ' + track.file_location)
end

# Open the file and read in the tracks then print them
def main
  a_file = File.new("input.txt", "r") # open for reading
  if a_file  # if nil this test will be false
    tracks = read_tracks(a_file)
    a_file.close
  else
    puts "Unable to open file to read!"
  end
  # Print all the tracks
  print_tracks(tracks)
end

main
