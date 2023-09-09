answer = 'y'
while(answer == 'y'||answer=='Y')
#first number

    puts("Enter 1st number:")
    num1= gets().chomp
    if(num1.match(/^\d*\.?\d*$/))
        num1= num1.chomp.to_f
    else
        puts("Enter only digits")
        redo
    end

#Operator

    puts("ENTER OPERATOR:")
    op= gets().chomp

    until(op == "+" || op == "-" || op == "*" || op == "/")
        puts("Only  +,-,*,/ operator allowed")
        puts("ENTER OPERATOR:")
        op= gets().chomp
    end

#second number
    puts("Enter 2nd number:")
    num2=gets().chomp
    until(num2.match(/^\d*\.?\d*$/))
        puts("Enter only digits")
        puts("Enter 2nd number:")
        num2=gets().chomp 
    end
    num2= num2.chomp.to_f 
    
#calculation
    case(op)
    when "+" 
        puts("#{num1} + #{num2} = #{num1 + num2}") 
    when "-" 
        puts("#{num1} - #{num2} = #{num1 - num2}")
    when "*" 
        puts("#{num1} * #{num2} = #{num1 * num2}")
    when "/" 
        if num2==0
            puts("Invalid Division " " Cant divide by Zero " " Choose Correct digits")
            redo
        end
        puts("#{num1} / #{num2} = #{num1 / num2}")
    end
    
puts("Enter (Y/y) if you want to calculate more and (N/n) for exit.")
answer = gets().chomp 

until(answer=='y' || answer=='Y')
    if(answer == 'n' || answer == 'N')
        exit
    end
    puts("Enter correct key")
    puts("Enter (Y/y) if you want to calculate more and (N/n) for exit.")
    answer = gets().chomp 
end
end  
# 