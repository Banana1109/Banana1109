require './input_functions'

def stub1_1
  print 'You selected Update album. '
  read_string('Press enter to continue')
end

def stub1_2
  print 'You selected update album Genre. '
  read_string('Press enter to continue')
end

def stub2
  print 'You selected Play album. '
  read_string('Press enter to continue')
end

def maintain_albums
  finished2=false
  while finished2==false
    puts 'Maintain Albums Menu:'
    puts '1 To update album_title'
    puts '2 To update Genre'
    puts '3 Exit'
    choice2 = read_integer_in_range("Please enter your choice:", 1, 3)
    case choice2
      when 1
        stub1_1
      when 2
        stub1_2
      else 
        finished2=true
    end
  end
end

def submenu
  print ''
end

def main
  finished = false
  begin
    puts 'Main Menu:'
    puts '1 To Enter or Update Album'
    puts '2 To Play existing Album'
    puts '3 Exit'
    choice = read_integer_in_range("Please enter your choice:", 1, 3)
    case choice
    when 1
      maintain_albums
    when 2
      stub2
    else
      finished=true
    end
  end until finished
end

main
