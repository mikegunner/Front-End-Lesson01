def letter_case_count(string)
  letter_case_count = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |chr|
    if ('a'..'z').to_a.include?(chr)
      letter_case_count[:lowercase] += 1
    elsif ('A'..'Z').to_a.include?(chr)
      letter_case_count[:uppercase] += 1
    else
      letter_case_count[:neither] += 1
    end
  end
  
  letter_case_count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }