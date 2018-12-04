french_fries = Dish.new({name:"french fries", description:"a lot of potatoes fried", image: "https://www.seriouseats.com/2018/04/20180309-french-fries-vicky-wasik-15-1500x1125.jpg"})
french_fries.save

sweet_fries = Dish.new({name:"Sweet Potato Fries", description:"a lot of potatoes fried", image: "http://divascancook.com/wp-content/uploads/2017/04/easy-bakedsweet-potato-fries-1024x768.jpg"})
sweet_fries.save

cheeseburgers = Dish.new({name:"cheeseburgers", description:"burger with american cheese", image:"https://www.seriouseats.com/recipes/images/2013/07/20130723-bacon-weave-food-lab-burger-step-by-step-27.jpg"})
cheeseburgers.save

spagueti = Dish.new({name:"spagueti", description:"a lot of potatoes tomato sauce", image: "https://img1.southernliving.timeinc.net/sites/default/files/styles/story_card_hero/public/image/2016/01/main/all-one-spaghetti-x_0_0.jpg?itok=vHNcRqaZ"})
spagueti.save

 chicken_parm = Dish.new({name:"chicken parm hero", description:"breaded chicken in hero with mozzarella and marinaara", image: "https://hips.hearstapps.com/del.h-cdn.co/assets/17/06/1486652825-easy-chicken-parml1.jpg"})
 chicken_parm.save

bagel_dish = Dish.new({name:"everything bagel", description:"avocado, bacon, eggs in  a delicious everything bagel", image: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2007/7/9/0/TU0309_tunaeverythingbagel.jpg.rend.hgtvcom.616.462.suffix/1432381759108.jpeg"})
bagel_dish.save

vegan_dish = Dish.new({name:"baladi eggplant", description:"roasted eggplant with tahini", image: "https://taliassteakhouse.com/wp-content/uploads/2016/09/Eggplant-Baladi.jpg"})
vegan_dish.save


potato = Ingredient.new({name:"potatoes"})
potato.save

sweet_potato = Ingredient.new({name:"sweet potato"})
sweet_potato.save

american = Ingredient.new({name:"cheese"})
american.save

chicken = Ingredient.new({name:"chicken"})
chicken.save

marinara = Ingredient.new({name:"marinara sauce"})
marinara.save

bagel = Ingredient.new({name:"everything bagel"})
bagel.save

eggplant = Ingredient.new({name:"eggplant"})
eggplant.save


monday_menu = Menu.new({day:"Monday", image: "https://img.freepik.com/free-vector/hello-monday-hand-drawn-letters-coming-out-of-a-cup-of-coffee_23-2147655180.jpg?size=338&ext=jpg"})
monday_menu.save

tuesday_menu = Menu.new({day:"Tuesday", image: "http://obrienspubsbrandon.com/wp-content/uploads/2018/07/Taco-Tuesday.jpg" })
tuesday_menu.save

wednesday_menu = Menu.new({day:"Wednesday", image:"http://i0.wp.com/lovelycraftyhome.com/wp-content/uploads/2017/04/Meal-Prep-Wednesday.jpg?resize=750%2C400"})
wednesday_menu.save

thursday_menu = Menu.new({day:"Thursday", image: "http://www.thebuildersclub.com.au/media/zoo/images/thurs-md-2_5af2daa13d9d0aa6855302cafde66a52.jpg"})
thursday_menu.save

friday_menu = Menu.new({day:"Friday", image: "https://www.spabettie.com/wp-content/uploads/2015/08/Fast-Food-Friday1.jpg"})
friday_menu.save

# saturday_menu = Menu.new({name:"bagel ABC", ingredient_id:bagel.id, dish_id:bagel_dish.id, day_id:saturday.id })
# saturday_menu.save

# sunday_menu = Menu.new({name:"Eggplant special", ingredient_id:eggplant.id, dish_id:vegan_dish.id, day_id:sunday.id })
# sunday_menu.save


ingredientDish1 = IngredientDish.new({dish_id: french_fries.id, ingredient_id: potato.id})
ingredientDish1.save

ingredientDish2 = IngredientDish.new({dish_id: sweet_fries.id, ingredient_id: sweet_potato.id})
ingredientDish2.save

ingredientDish3 = IngredientDish.new({dish_id: cheeseburgers.id, ingredient_id: american.id})
ingredientDish3.save

ingredientDish4 = IngredientDish.new({dish_id: bagel_dish.id, ingredient_id: bagel.id})
ingredientDish4.save

ingredientDish5 = IngredientDish.new({dish_id: spagueti.id, ingredient_id: marinara.id})
ingredientDish5.save

ingredientDish6 = IngredientDish.new({dish_id: vegan_dish.id, ingredient_id: eggplant.id})
ingredientDish6.save

menuDish1 = MenuDish.new({dish_id: vegan_dish.id, menu_id: monday_menu.id})
menuDish1.save

menuDish2 = MenuDish.new({dish_id: spagueti.id, menu_id: tuesday_menu.id})
menuDish2.save

menuDish3 = MenuDish.new({dish_id: bagel_dish.id, menu_id: monday_menu.id})
menuDish3.save

menuDish4 = MenuDish.new({dish_id: vegan_dish.id, menu_id: monday_menu.id})
menuDish4.save


menuDish5 = MenuDish.new({dish_id: cheeseburgers.id, menu_id: friday_menu.id})
menuDish5.save


menuDish6 = MenuDish.new({dish_id: french_fries.id, menu_id: wednesday_menu.id})
menuDish6.save

menuDish7 = MenuDish.new({dish_id: sweet_fries.id, menu_id: thursday_menu.id})
menuDish7.save

menuDish8 = MenuDish.new({dish_id: sweet_fries.id, menu_id: wednesday_menu.id})
menuDish8.save
