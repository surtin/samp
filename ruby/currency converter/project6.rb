require 'open-uri'
require 'sqlite3'

# Get exchange rate and other throw user input into variables
prefix = 'http://download.finance.yahoo.com/d/quotes.csv?s='
source_currency = gets.chomp
target_currency = gets.chomp
suffix = '=X&f=sl1d1t1ba&e=.csv'
url = prefix + source_currency + target_currency + suffix
line = open(url).read
exchange_rate = line.split(',')[1].to_f

print exchange_rate, "\n"


$db = SQLite3::Database.new('converter.db')
# $db.results_as_hash = true

# Create converted table.
$db.execute %Q{
create table if not exists converted(
  customer_name varchar(10),
  current_date_time Time.now,
  source_currency varchar(3),
  target_currency varchar(3),
  source_amount float,
  target_amount float);
}

# Display instructions with example codes first
print "This is a simple script to convert currency e.g. CAD CLP DKK KES RUB JPY USD GBR:\n"

# Read data from keyboard.
print 'Enter your name: '
customer_name = gets.chomp
print 'Enter source currency: '
source_currency = gets.chomp
print 'Enter target currency: '
target_currency = gets.chomp
print 'Enter amount to convert: '
source_amount = gets.chomp.to_i


$db.execute %Q{
insert into converted values(
  '#{customer_name}, #{source_currency}', '#{target_currency}', #{source_amount});
}

# Query converted table.
converted = $db.execute %Q{
  select * from converted;
}
print converted, "\n"

$db.close