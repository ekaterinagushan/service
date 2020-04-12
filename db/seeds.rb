Rake::Task['db:drop:_unsafe'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

#categories = ['Молочная продукция', 'Бакалея', 'Хлебобулочные изделия', 'Мясо,птица' 'Мясная гастрономия', 'Рыба и морепродукты', 'Снэки', 'Полуфабрикаты', 'Детское питание', 'Кондитерские изделия', 'Консервация']

categories = [
 {
  name: 'Молочная продукция',
  products: ['Кефир "Био-Баланс" обезжиренный 930 гр.', 'Биопродукт кефирный обогащенный бифидобактериями actiregularis «активиа», 835г']
 }, {
  name: 'Бакалея',
  products: ['"Щебекинские" макаронные изделия "спагетти тонкие"', 'Мука кукурузная "Гарнец"', 'Макаронные изделия Tress Wellenspatzle ',]
 },{
  name: 'Хлебобулочные изделия',
  products: ['Батон нарезной из пшеничной муки 1 сорта', 'Батон сдобный "Cтолица"']
 }
]

categories.each do |category|
 c = Category.create!(name: category[:name])
 puts "Category with name #{c.name}"

 category[:products].each do |product|
   p = c.products.create!(name:product)
   puts "Product with name #{p.name} just created in category with name #{p.category.name}"
 end

end
