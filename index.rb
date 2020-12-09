def welcome_and_input()
    system('clear')
    puts 'Welcome to your friendly neighbourhood ATM!'
    puts 'Please select from the following options:'
    puts '1. Display balance'
    puts '2. Make a withdrawal'
    puts '3. Make a deposit'
    puts '4. Exit'

    input = gets.chomp.to_i

    case input
    when 1
        # show balance
        show_balance()
        puts "Press enter to continue."
        gets
        welcome_and_input()
    when 2
        # make a withdrawal
        show_balance()
        withdraw()
        show_balance()
        puts "Press enter to continue."
        gets
        welcome_and_input()
    when 3
        # make a deposit
        show_balance()
        deposit()
        show_balance()
        puts "Press enter to continue."
        gets
        welcome_and_input()
    when 4
        # exit
        puts 'Goodbye! Thank you for banking with us.'
        system('exit')
    else
        puts "invalid input. Please enter 1-4. Press enter to continue"
        okay = gets.chomp
       welcome_and_input()
    end
end

# print balance from txt file
def show_balance()
    File.open("balance.txt").each do |line|
        bank_balance = line.to_i
        if bank_balance <= 0 
            puts "You have no money."
        else
            puts "Your bank balance is $#{bank_balance}"
            return bank_balance
        end
    end
end

# minus number from balance txt file
def withdraw()
    print "How much money would you like to withdraw? $"
    withdrawal_amount = gets.chomp.to_i
    bank_balance = 0
    File.open("balance.txt").each do |line|
        bank_balance = line.to_i
    end
    amount_after_withdrawal = bank_balance - withdrawal_amount
    File.open("balance.txt", "w") do |a|
        a.write amount_after_withdrawal
    end
end

# add number to balance txt file
def deposit()
    print "How much money would you like to deposit? $"
    deposit_amount = gets.chomp.to_i
    bank_balance = 0
    File.open("balance.txt").each do |line|
        bank_balance = line.to_i
    end
    amount_after_deposit = bank_balance + deposit_amount
    File.open("balance.txt", "w") do |a|
        a.write amount_after_deposit
    end
end

welcome_and_input()