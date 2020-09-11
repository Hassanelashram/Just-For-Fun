create_files(10)
def create_files(num)
counter = 0
counter2 = 0
counter3 = 0
counter4 = 0
while counter != num
  print `mkdir ~/desktop/#{counter}`
  while counter2 != num
    print `mkdir ~/desktop/#{counter}/#{counter2}`
    while counter3 != num
      print `mkdir ~/desktop/#{counter}/#{counter2}/#{counter3}`
      while counter4 != num
        print `mkdir ~/desktop/#{counter}/#{counter2}/#{counter3}/#{counter4}`
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
