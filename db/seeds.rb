Rake::Task['db:drop:_unsafe'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

categories = ['Молочная продукция', 'Заменители молочной продукции', 'Бакалея', 'Хлебобулочные изделия', 'Мясо,птица' 'Мясная гастрономия', 'Рыба и морепродукты', 'Снэки', 'Полуфабрикаты', 'Детское питание', 'Кондитерские изделия', 'Консервация']

categories.each do |category|
 c = Category.create!(name: category)
 puts "Category with name #{c.name}"
end

products = ['Кефир "Био-Баланс" обезжиренный 930 гр.', 'Биопродукт кефирный обогащенный бифидобактериями actiregularis «активиа», 835г']

products.each do |product|
  category = Category.find_by_name('Молочная продукция')
  p = category.products.create!(name:product)
  puts "Product with name #{p.name} just created in category with name #{p.category.name}"
end
