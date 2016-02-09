# Triangle Side Lengths

# I worked on this challenge with Greg Toprak.
​
​
# Your Solution Below
​
def valid_triangle?(a, b, c)
    if a <= 0 || b <= 0 || c <= 0
        return false
    else
        if a >= b && a >= c
            long = a
            x = b
            y = c
        elsif b >= c && b >= a
            long = b
            x = c
            y = a
        elsif c >= a && c >= b
            long = c
            x = a
            y = b
        end
​
        if long < x+y
            return true
        else
            return false
        end
    end
end