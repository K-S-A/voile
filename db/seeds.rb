# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# \COPY products(code, name, receipt_date, stock_balance, rack, row, shelf, price, sale_price, comment, height, total_amount, showcase, measured, workshop, purchase_price, ratio, calculated_price, s, t, u, manufacturer, hidden_comments, x, y, z, aa, category, db_date, ad, remaining, manual_correction) FROM 'db/voile_2_5.csv' DELIMITER ',' CSV header;
datafile = Rails.root + 'db/voile_2_5.csv'

CSV.foreach(datafile, headers: false) do |code, name, receipt_date, stock_balance, rack, row, shelf, price, sale_price, comment, height, total_amount, showcase, measured, workshop, purchase_price, ratio, calculated_price, s, t, u, manufacturer, hidden_comments, x, y, z, aa, category, db_date, ad, remaining, manual_correction|
  Product.create!(code: code, name: name) do |pr|
    pr.receipt_date = receipt_date
    pr.stock_balance = (stock_balance.to_s.gsub(',', '.').to_f * 100).round
    pr.rack = rack
    pr.row = row
    pr.shelf = shelf
    pr.price_cents = price.to_s.gsub(',', '.').to_f * 100
    pr.sale_price_cents = sale_price.to_s.gsub(',', '.').to_f * 100
    pr.comment = comment
    pr.height = height.blank? ? nil : height.to_i
    pr.total_amount = (total_amount.to_s.gsub(',', '.').to_f * 100).round
    pr.showcase = showcase
    pr.measured = measured
    pr.workshop = workshop
    pr.purchase_price_cents = purchase_price.to_s.gsub(',', '.').to_f * 100
    pr.ratio = ratio
    pr.calculated_price_cents = calculated_price.to_s.gsub(',', '.').to_f * 100
    pr.s = s
    pr.t = t
    pr.u = u
    pr.manufacturer = manufacturer
    pr.hidden_comments = hidden_comments
    pr.x = x
    pr.y = y
    pr.z = z
    pr.aa = aa
    pr.category = category
    pr.db_date = db_date
    pr.ad = ad
    pr.remaining = (remaining.to_s.gsub(',', '.').to_f * 100).round
    pr.manual_correction = manual_correction.to_s.gsub(',', '.').to_f * 100
  end
end
