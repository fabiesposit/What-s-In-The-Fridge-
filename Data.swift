//
//  Data.swift
//  WITF
//
//  Created by Gabriele on 07/03/24.
//

import SwiftUI
import Observation


@Observable

class SharedData {
    
    var ingredients = [ Ingredient(name: "Milk",image:"Rectangle 29",icon:"waterbottle",quantity: 1, mu: "l"),

                        Ingredient(name: "Eggs",image: "Rectangle 23",quantity1: 1, mu: "",type: true),
                        Ingredient(name: "Flour",image: "flour",quantity: 1, mu: "kg"),
                        Ingredient(name: "Butter",image: "Rectangle 25",quantity: 1, mu: "g"),
                        Ingredient(name: "Beef",image: "Rectangle 27",quantity: 1, mu: "kg"),
                        Ingredient(name: "Chicken",image: "Rectangle 32",quantity: 1, mu: "kg"),
                        Ingredient(name: "Chocolate",image: "Rectangle 26",quantity: 1, mu: "g"),
                        Ingredient(name: "Tomatoes",image: "Rectangle 31",quantity: 1, mu: "g"),
                        Ingredient(name: "Coconut Milk",image:"Rectangle 29",icon:"waterbottle",quantity: 1, mu: "l"),
                        Ingredient(name: "Skimmed Milk",icon:"waterbottle",quantity: 1, mu: "l"),
                        Ingredient(name: "Lactose-free Milk",icon:"waterbottle",quantity: 1, mu: "l"),
                        Ingredient(name: "Salt", quantity: 1, mu: "g"),
                        Ingredient(name: "Sugar", quantity: 1, mu: "g"),
                                    Ingredient(name: "Olive Oil", quantity: 1, mu: "ml"),
                                    Ingredient(name: "Honey", quantity: 1, mu: "ml"),
                                    Ingredient(name: "Vanilla Extract", quantity: 1, mu: "ml"),
                                    Ingredient(name: "Yeast", quantity: 1, mu: "g",type: true),
                                    Ingredient(name: "Baking Powder", quantity: 15, mu: "g",type: true),
                                    Ingredient(name: "Cocoa Powder", quantity: 100, mu: "g"),
                                    Ingredient(name: "Lemon Juice", quantity: 50, mu: "ml"),
                                    Ingredient(name: "White Wine Vinegar", quantity: 50, mu: "ml"),
                                    Ingredient(name: "Red Wine Vinegar", quantity: 50, mu: "ml"),
                                    Ingredient(name: "Soy Sauce", quantity: 100, mu: "ml"),
                                    Ingredient(name: "Cornstarch", quantity: 50, mu: "g"),
                                    Ingredient(name: "Brown Sugar", quantity: 300, mu: "g"),
                                    Ingredient(name: "Powdered Sugar", quantity: 300, mu: "g"),
                                    Ingredient(name: "Balsamic Vinegar", quantity: 50, mu: "ml"),
                                    Ingredient(name: "Maple Syrup", quantity: 100, mu: "ml"),
                                    Ingredient(name: "Ground Cinnamon", quantity: 20, mu: "g"),
                                    Ingredient(name: "Ground Nutmeg", quantity: 10, mu: "g"),
                                    Ingredient(name: "Ground Ginger", quantity: 10, mu: "g"),
                                    Ingredient(name: "Vanilla Bean", quantity: 2, mu: "",type: true),
                                    Ingredient(name: "Dijon Mustard", quantity: 50, mu: "g"),
                                    Ingredient(name: "Rosemary", quantity: 10, mu: "g"),
                                    Ingredient(name: "Thyme", quantity: 10, mu: "g"),
                                    Ingredient(name: "Basil", quantity: 10, mu: "g"),
                                    Ingredient(name: "Parsley", quantity: 10, mu: "g"),
                                    Ingredient(name: "Oregano", quantity: 10, mu: "g"),
                                    Ingredient(name: "Ground Beef", quantity: 500, mu: "g"),
                                    Ingredient(name: "Pasta", quantity: 300, mu: "g"),
                                    Ingredient(name: "Rice", quantity: 250, mu: "g"),
                                    Ingredient(name: "Lettuce", quantity: 1, mu: "head"),
                                    Ingredient(name: "Onion", quantity: 2, mu: "",type: true),
                                    Ingredient(name: "Garlic", quantity: 3, mu: "cloves"),
                                    Ingredient(name: "Bell Pepper", quantity: 2, mu: "",type: true),
                                    Ingredient(name: "Carrot",icon: "carrot" ,quantity: 3, mu: "",type: true),
                                    Ingredient(name: "Potato", quantity: 4, mu: "",type: true),
                                    Ingredient(name: "Celery", quantity: 3, mu: "",type: true),
                                    Ingredient(name: "Cucumber", quantity: 2, mu: "",type: true),
                                    Ingredient(name: "Green Beans", quantity: 200, mu: "g"),
                                    Ingredient(name: "Broccoli", quantity: 1, mu: "head"),
                                    Ingredient(name: "Spinach", quantity: 200, mu: "g"),
                                    Ingredient(name: "Cheese", quantity: 250, mu: "g"),
                                    Ingredient(name: "Bread", quantity: 1, mu: "loaf"),
                                    Ingredient(name: "Peanut Butter", quantity: 200, mu: "g"),
                                    Ingredient(name: "Jam", quantity: 300, mu: "g"),
                                    Ingredient(name: "Oats", quantity: 500, mu: "g")
                       
    ]
    
    
    var recipes = [ Recipe(name: "Hot Milk Muffin", main_image: "Muffin", preparation: "To make hot milk muffins, start by beating the eggs and sugar together with an electric mixer until you obtain a foamy mixture. While continuing to mix with the beaters, incorporate the flour.", r_ingredients: ["Flour","Sugar ","Milk","Eggs","Butter","Yeast","Lemon"], steps_image: ["Rectangle 10","Rectangle 12","Rectangle 11","Rectangle 14","Rectangle 13","Rectangle 15","muffin"], servings: 12),
                    
                    Recipe(name: "Carbonara", main_image: "Rectangle 22", preparation: "To prepare the spaghetti alla carbonara, start by putting a pot with salted water on the fire to cook the pasta. In the meantime, remove the rind from the jowls and cut it first into slices and then into strips about 1cm thick. The leftover rind can be reused to flavor other preparations.", r_ingredients: ["Pasta","Eggs","Jowls","Pecorino Cheese","Black Pepper"], steps_image: ["0C3733B0-5576-412E-8306-713E0E6A6B74_4_5005_c 1","BA43D8F9-DE37-4852-9ADC-4B52ED94B7D6_4_5005_c 1","2738BAF5-2065-4D69-8960-508250026611_4_5005_c 1","A753CE8F-9717-4F40-9F06-86B74E5DDBB1_4_5005_c 1","7F918245-FD48-4B12-A28A-A385E578B709_4_5005_c 1","B4AF84AF-3F2F-49C8-A706-8A755E54A72E_4_5005_c 1"], servings: 12),
                   
                    Recipe(name: "Milkshake", main_image: "MILKSHAKE", preparation: "Combine milk, ice, cocoa powder, and sugar in a blender. Blend until smooth and creamy. Serve in glasses with a straw.", r_ingredients: ["Milk", "Ice", "Cocoa powder", "Sugar"],steps_image: ["NoImage"], servings: 2, r_vegetarian: true, r_vegan: false, r_lactose_free: false, r_gluten_free: true),
                        Recipe(name: "Kheer", main_image: "KHEER", preparation: "Rinse rice thoroughly. In a saucepan, combine milk, rice, water, and butter. Bring to a boil, then reduce heat and simmer until rice is cooked and the mixture thickens, stirring occasionally. Serve warm or chilled.", r_ingredients: ["Milk", "Rice", "Water", "Butter"],steps_image: ["NoImage"], servings: 2, r_vegetarian: true, r_vegan: false, r_lactose_free: false, r_gluten_free: true),
                        Recipe(name: "Milk bread", main_image: "MILK_BREAD", preparation: "Warm milk slightly. In a mixing bowl, combine flour, butter, salt, eggs, and warm milk. Knead until a smooth dough forms. Allow the dough to rise until doubled in size. Shape into loaves and bake until golden brown.", r_ingredients: ["Milk", "Flour", "Butter", "Salt", "Eggs"],steps_image: ["NoImage"], servings: 2, r_vegetarian: true, r_vegan: false, r_lactose_free: false, r_gluten_free: false),
                        Recipe(name: "Milk Focaccia", main_image: "MILK_FOCACCIA", preparation: "In a mixing bowl, combine milk, flour, salt, and oil. Knead until a smooth dough forms. Allow the dough to rise until doubled in size. Press the dough into a baking pan, creating dimples with your fingers. Drizzle with olive oil and sprinkle with salt. Bake until golden brown.", r_ingredients: ["Milk", "Flour", "Salt", "Oil"],steps_image: ["NoImage"], servings: 2, r_vegetarian: true, r_vegan: false, r_lactose_free: false, r_gluten_free: false),

                    Recipe(
                            name: "Spaghetti Bolognese",
                            main_image: "spaghetti",
                            preparation: "Classic spaghetti bolognese recipe. This hearty dish is made with ground beef, tomatoes, onions, and garlic, simmered to perfection. Serve over cooked spaghetti for a comforting and satisfying meal.To make spaghetti bolognese, start by heating olive oil in a large skillet over medium heat. Add chopped onions and minced garlic, sauté until fragrant. Add ground beef to the skillet, and cook until browned. Stir in diced tomatoes, salt, and pepper. Simmer for 20 minutes to allow the flavors to meld together. Meanwhile, cook pasta according to package instructions until al dente. Drain and set aside. Serve the bolognese sauce over cooked spaghetti, garnished with freshly grated Parmesan cheese and chopped parsley. Enjoy this classic Italian dish with a side of garlic bread and a glass of red wine for a truly satisfying meal.",
                            r_ingredients: ["Pasta", "Beef", "Tomatoes", "Onion", "Garlic", "Olive Oil", "Salt", "Pepper"],
                            steps_image: ["NoImage", "NoImage", "NoImage"],
                            preference: false,
                            servings: 4,
                            r_vegetarian: false,
                            r_vegan: false,
                            r_lactose_free: true,
                            r_gluten_free: false
                        ),
                        Recipe(
                            name: "Vegetable Stir-Fry",
                            main_image: "veg",
                            preparation: "A healthy and colorful stir-fry loaded with fresh vegetables. This dish is quick and easy to make, perfect for busy weeknights. Customize with your favorite veggies and serve over rice for a satisfying meal.To make vegetable stir-fry, heat olive oil in a large skillet or wok over high heat. Add sliced bell pepper, julienned carrots, and sliced onion to the skillet. Stir-fry for 3-4 minutes until vegetables are tender-crisp. Stir in minced garlic and grated ginger, cook for another minute. Add soy sauce to the skillet, toss to coat the vegetables evenly. Season with salt and pepper to taste. Serve the vegetable stir-fry hot over cooked rice. Garnish with chopped green onions and toasted sesame seeds for added flavor and texture. Enjoy this nutritious and delicious dish as a standalone meal or paired with your favorite protein!",
                            r_ingredients: ["Bell Pepper", "Carrot", "Onion", "Garlic", "Ginger", "Soy Sauce", "Olive Oil", "Salt", "Pepper"],
                            steps_image: ["NoImage", "NoImage", "NoImage"],
                            preference: false,
                            servings: 2,
                            r_vegetarian: true,
                            r_vegan: true,
                            r_lactose_free: true,
                            r_gluten_free: true
                        ),
                        Recipe(
                            name: "Chocolate Chip Cookies",
                            main_image: "cookies",
                            preparation: "Classic chocolate chip cookies that are soft and chewy. These homemade cookies are perfect for any occasion, whether you're craving a sweet treat or baking for a special event.To make chocolate chip cookies, start by preheating the oven to 180°C (350°F). Line baking sheets with parchment paper. In a large mixing bowl, cream together softened butter, sugar, and brown sugar until light and fluffy. Add eggs, one at a time, mixing well after each addition. Stir in vanilla extract. In a separate bowl, whisk together flour, baking soda, and salt. Gradually add dry ingredients to the butter mixture, mixing until well combined. Fold in chocolate chips until evenly distributed throughout the cookie dough. Drop rounded tablespoons of dough onto prepared baking sheets, leaving space between each cookie. Bake in preheated oven for 10-12 minutes, or until edges are lightly golden. Remove from oven and let cool on baking sheets for a few minutes before transferring to wire racks to cool completely. Enjoy these delicious chocolate chip cookies with a glass of milk or your favorite hot beverage!",
                            r_ingredients: ["Flour", "Butter", "Sugar", "Brown Sugar", "Eggs", "Vanilla Extract", "Baking Soda", "Salt", "Chocolate"],
                            steps_image: ["NoImage", "NoImage", "NoImage"],
                            preference: false,
                            servings: 24,
                            r_vegetarian: true,
                            r_vegan: false,
                            r_lactose_free: false,
                            r_gluten_free: false
                        ),
                    Recipe(
                            name: "Chicken Alfredo Pasta",
                            main_image: "Chicken",
                            preparation: "Creamy and indulgent chicken alfredo pasta is a classic Italian dish that is sure to please. Tender chicken breast and fettuccine pasta are smothered in a rich and velvety alfredo sauce made from scratch.To make chicken alfredo pasta, begin by cooking fettuccine pasta according to package instructions until al dente. In a large skillet, heat olive oil over medium heat and sauté sliced chicken breast until fully cooked. Remove the chicken from the skillet and set aside. In the same skillet, melt butter and add minced garlic, cooking until fragrant. Stir in heavy cream and grated Parmesan cheese, whisking until the sauce thickens. Season with salt, pepper, and a pinch of nutmeg for added flavor. Add the cooked pasta and chicken to the sauce, tossing until fully coated. Serve hot, garnished with chopped parsley and additional Parmesan cheese if desired. Enjoy this decadent chicken alfredo pasta with your favorite side salad or garlic bread.",
                            r_ingredients: ["Fettuccine Pasta", "Chicken Breast", "Olive Oil", "Butter", "Garlic", "Heavy Cream", "Parmesan Cheese", "Salt", "Pepper", "Nutmeg", "Parsley"],
                            steps_image: ["NoImage", "NoImage", "NoImage"],
                            preference: false,
                            servings: 4,
                            r_vegetarian: false,
                            r_vegan: false,
                            r_lactose_free: false,
                            r_gluten_free: false
                        ),
                        Recipe(
                            name: "Caprese Salad",
                            main_image: "Caprese_Salad",
                            preparation:"Caprese salad is a simple and elegant Italian dish that showcases the flavors of ripe tomatoes, fresh mozzarella cheese, and fragrant basil.Drizzled  with balsamic glaze and extra virgin olive oil, this salad is a refreshing appetizer or light meal.To prepare caprese salad, start by slicing ripe tomatoes and fresh mozzarella cheese into rounds. Arrange the tomato and mozzarella slices on a serving platter, alternating them for an attractive presentation. Tuck fresh basil leaves between the tomato and cheese slices. Drizzle the salad with balsamic glaze and extra virgin olive oil. Season with salt and pepper to taste. Garnish with additional basil leaves and a sprinkle of flaky sea salt if desired. Serve the caprese salad immediately as a delightful starter or side dish. Buon appetito!",
                                                    
                                                        r_ingredients: ["Tomatoes", "Fresh Mozzarella Cheese", "Basil", "Balsamic Glaze", "Extra Virgin Olive Oil", "Salt", "Pepper"],
                                                        steps_image: ["NoImage", "NoImage", "NoImage"],
                                                        preference: false,
                                                        servings: 2,
                                                        r_vegetarian: true,
                                                        r_vegan: false,
                                                        r_lactose_free: true,
                                                        r_gluten_free: true
                                                    ),
                                                    Recipe(
                                                        name: "Grilled Salmon with Lemon Herb Butter",
                                                        main_image: "salm",
                                                        preparation: "Grilled salmon with lemon herb butter is a flavorful and healthy dish that is perfect for summertime grilling. Tender salmon fillets are seasoned with herbs, grilled to perfection, and finished with a bright and zesty lemon herb butter sauce.Begin by preheating the grill to medium-high heat. Season salmon fillets with salt, pepper, and a mixture of chopped fresh herbs such as parsley, dill, and thyme. Grill the salmon for 4-5 minutes per side, or until it flakes easily with a fork. While the salmon is grilling, prepare the lemon herb butter sauce by melting butter in a small saucepan. Stir in minced garlic, lemon zest, and freshly squeezed lemon juice. Cook until fragrant and slightly thickened. Remove the grilled salmon from the grill and drizzle with the lemon herb butter sauce. Serve immediately, garnished with additional fresh herbs and lemon slices. This grilled salmon with lemon herb butter is delicious served alongside grilled vegetables or a crisp green salad.",
                                                        r_ingredients: ["Salmon Fillets", "Salt", "Pepper", "Fresh Herbs (Parsley, Dill, Thyme)", "Butter", "Garlic", "Lemon", "Olive Oil"],
                                                        steps_image: ["NoImage", "NoImage", "NoImage"],
                                                        preference: false,
                                                        servings: 4,
                                                        r_vegetarian: false,
                                                        r_vegan: false,
                                                        r_lactose_free: true,
                                                        r_gluten_free: true
                                                    )
                                                
                                ]
                                
                                var ingredients_selected = [Ingredient]()
                                var recipes_liked = [Recipe]()
                                    var profile = Profile(name: "sara", surname:"lopez")
                                
                              
                            }

    
  

var sharedData = SharedData()
