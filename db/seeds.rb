puts 'cleaning database...'
Subsidy.destroy_all

subsidy_one = Subsidy.new(name: 'Subvention des activités sportives', start_date: '1/10/2018', end_date: '31/12/2018', amount: 90)

subsidy_two = Subsidy.new(name: 'Subvention des activités culturelles', start_date: '1/09/2018', end_date: '31/12/2018', amount: 120)

subsidy_three = Subsidy.new(name: 'Subvention rentrée scolaire', start_date: '15/08/2018', end_date: '30/09/2018', amount: 60)

subsidy_four = Subsidy.new(name: 'Subvention des affaires de toilettes pour chat et chien', start_date: '15/10/2018', end_date: '15/02/2019', amount: 17)

subsidy_five = Subsidy.new(name: 'Subvention père noël', start_date: '10/12/2018', end_date: '23/12/2019', amount: 180)

puts 'subsidies created'
