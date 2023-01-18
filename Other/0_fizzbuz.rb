# Given an integer n, return a string array answer (1-indexed) where:
# - answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# - answer[i] == "Fizz" if i is divisible by 3.
# - answer[i] == "Buzz" if i is divisible by 5.
# - answer[i] == i (as a string) if none of the above conditions are true.

def fizz_buzz n
  hash = {
    3: "Fizz",
    5: "Buzz"
  }

  (1..n).map do |i|
    s = ""

    hash.each do |key_val|
      s << val if i % key == 0
    end

    s = i.to_s if s == ""
    s
  end
end
