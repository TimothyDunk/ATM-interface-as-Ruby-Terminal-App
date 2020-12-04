require_relative('validators')

def welcome_and_input()
    system('clear')
    puts 'Welcome to your friendly neighbourhood ATM!'
    puts 'Please select from the following options:'
    puts '1. Display balance'
    puts '2. Make a withdrawal'
    puts '3. Make a deposit'
    puts '4. Exit'

    input = gets.chomp
    input_valid = Validators.validate_input(input)
    if !input_valid
        #print error message for invalid input then reprint welcome
        puts 'Invalid input. Please enter a number from 1-4'
        puts 'Press enter to continue'
        gets
        welcome_and_input()
    end

    case input
    when 1
        # show balance
        show_balance()
    when 2
        # make a withdrawal
    when 3
        # make a deposit
    when 4
        # exit
        puts 'Goodbye! Thank you for banking with us.'
        system('exit')
    else
    end
end

welcome_and_input()