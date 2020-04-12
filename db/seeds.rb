

#categories = ['Молочная продукция', 'Бакалея', 'Хлебобулочные изделия', 'Мясо,птица' 'Мясная гастрономия', 'Рыба и морепродукты', 'Снэки', 'Полуфабрикаты', 'Детское питание', 'Кондитерские изделия', 'Консервация']

@categories = [ #@ расширяет область видимости
 {
  name: 'Молочная продукция',
  products: ['Кефир "Био-Баланс" обезжиренный 930 гр.', 'Биопродукт кефирный обогащенный бифидобактериями actiregularis «активиа», 835г']
 }, {
  name: 'Бакалея',
  products: ['"Щебекинские" макаронные изделия "спагетти тонкие"', 'Мука кукурузная "Гарнец"', 'Макаронные изделия Tress Wellenspatzle ',]
 },{
  name: 'Хлебобулочные изделия',
  products: ['Батон нарезной из пшеничной муки 1 сорта', 'Батон сдобный "Cтолица"']
 },{
  name: 'Мясо,птица',
  products: ['', '',]
 }
]

def seed
 reset_db
 create_categories(@categories) # название метода и то, что мы запускаем
end

def reset_db
  Rake::Task['db:drop:_unsafe'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_categories(categories) #создали метод (название с передачей)
  categories.each { |category| create_category(category)}

#  categories.each do |category| # в рамках цикла определяем локальную переменную
#  create_category(category)
#  end
#  do end  тоже самое, что и {}
end

def create_category(category)
  c = Category.create!(name: category[:name])
  puts "Category with name #{c.name}"

  create_category_products(c, category[:products])
end

def create_category_products(category, products)
   products.each { |product| create_category_product(category, product) }

#  products.each do |product| # достаем продукты
#    create_category_product(category, product) # вызов метода
#  end
end

def create_category_product(category, product)
  p = category.products.create!(name:product)
  puts "Product with name #{p.name} just created in category with name #{p.category.name}"
end

seed
