class Array
  def sum() inject(0) { |sum, i| sum + i } end
end

def create_card tickets
  card = []
  tickets.each { |ticket| card << ticket if card.sum + ticket <= 150 }
  card.each { |ticket| tickets.delete ticket }
end

tickets = [ 30.98, 95.85, 61.99, 32.99, 64.79, 54.00, 55.00 ]
cards = [ ]
3.times { cards << create_card(tickets) }
cards.each { |card| puts "Card: #{card.join(" ")} => #{card.sum}" }
puts "==> Total amount: #{cards.flatten.sum}"
puts("==> #{tickets.empty? ? 'All tickets fitted' : '#{tickets.size} tickets remaining'}!")