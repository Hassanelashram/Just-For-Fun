

def create_files(num)
counter = 0
counter2 = 0
counter3 = 0
counter4 = 0
system("mkdir ~/desktop/folder_maze")
while counter != num
  system("mkdir ~/desktop/folder_maze/#{counter}")
  while counter2 != num
    system("mkdir ~/desktop/folder_maze/#{counter}/#{counter2}")

    while counter3 != num
      system("mkdir ~/desktop/folder_maze/#{counter}/#{counter2}/#{counter3}")
      while counter4 != num
        system("mkdir ~/desktop/folder_maze/#{counter}/#{counter2}/#{counter3}/#{counter4}")
        counter4 += 1
      end
      counter4 = 0
      counter3 += 1
    end
    counter3 = 0
    counter2 += 1
  end
  counter2 = 0
  counter += 1
end
end


create_files(100)
