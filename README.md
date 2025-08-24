# recipe_book

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Connection to BD
Estoy generando la api con Mockoon en mi local

el get de /recipes es:
{
  "recipes": [
    { 
      "id":"1",
      "name": "Espaguetis a la Carbonara",
      "author": "Chef María López",
      "image_link": "https://static.platzi.com/media/uploads/Espagueti_2619917177.jpeg",
      "recipe": [
        "Cuece los espaguetis en agua con sal hasta que estén al dente.",
        "En un bol, bate huevos y añade queso parmesano rallado.",
        "Fríe panceta en una sartén hasta que esté crujiente.",
        "Mezcla los espaguetis con la panceta y la mezcla de huevo y queso.",
        "Sirve con más queso y pimienta negra al gusto."
      ]
    },
    {
      "id":"2",
      "name": "Ensalada César",
      "author": "Chef Juan Martínez",
      "image_link": "https://static.platzi.com/media/uploads/cesar_858569da19.jpeg",
      "recipe": [
        "Lava y corta la lechuga romana.",
        "Añade crutones y queso parmesano rallado.",
        "Prepara la salsa con mayonesa, ajo, limón, anchoas y queso parmesano.",
        "Vierte la salsa sobre la lechuga y mezcla bien.",
        "Agrega más parmesano al gusto antes de servir."
      ]
    },
    {
      "id":"3",
      "name": "Paella Valenciana",
      "author": "Chef Ana González",
      "image_link": "https://static.platzi.com/media/uploads/paella_4b9d56f036.jpeg",
      "recipe": [
        "Sofríe pollo y conejo en una paellera hasta dorar.",
        "Añade judía verde, garrofón y tomate triturado.",
        "Agrega arroz y caldo de pollo.",
        "Incorpora azafrán, sal y pimentón.",
        "Cocina a fuego lento hasta que el arroz esté en su punto."
      ]
    },
    {
      "id":"4",
      "name": "Tacos al Pastor",
      "author": "Chef Luis Ramírez",
      "image_link": "https://static.platzi.com/media/uploads/tacos_6e6b075d0f.jpeg",
      "recipe": [
        "Marina la carne de cerdo en una mezcla de achiote, piña y especias.",
        "Cocina la carne en una parrilla o sartén hasta dorar.",
        "Corta la carne en trozos pequeños.",
        "Sirve la carne en tortillas de maíz con piña, cebolla y cilantro.",
        "Acompaña con salsa verde y limón."
      ]
    },
    {
      "id":"5",
      "name": "Sushi de Salmón",
      "author": "Chef Kazuo Tanaka",
      "image_link": "https://static.platzi.com/media/uploads/sushi_d2a9cca7f1.jpeg",
      "recipe": [
        "Lava y cocina el arroz para sushi.",
        "Mezcla el arroz cocido con vinagre de arroz, azúcar y sal.",
        "Corta el salmón en tiras delgadas.",
        "Forma pequeñas bolas de arroz y coloca una tira de salmón encima.",
        "Sirve con salsa de soja y wasabi."
      ]
    },
    {
      "id":"6",
      "name": "Curry de Pollo",
      "author": "Chef Priya Sharma",
      "image_link": "https://static.platzi.com/media/uploads/curry_a06bf8ce16.jpeg",
      "recipe": [
        "Sofríe cebolla, ajo y jengibre en una sartén.",
        "Añade las especias: cúrcuma, comino, y garam masala.",
        "Agrega el pollo y cocina hasta dorar.",
        "Vierte leche de coco y cocina a fuego lento hasta que el pollo esté tierno.",
        "Sirve con arroz basmati y cilantro fresco."
      ]
    },
    {
      "id":"7",
      "name": "Pizza Margarita",
      "author": "Chef Marco Rossi",
      "image_link": "https://static.platzi.com/media/uploads/flutter_pizza_a9b42f3711.jpg",
      "recipe": [
        "Prepara una base de pizza con harina, agua y levadura.",
        "Extiende la masa y cubre con salsa de tomate.",
        "Añade queso mozzarella y albahaca fresca.",
        "Hornea a 220°C hasta que el queso esté derretido y la masa crujiente.",
        "Sirve caliente y disfruta."
      ]
    },
    {
      "id":"8",
      "name": "Ramen Japonés",
      "author": "Chef Haruto Sato",
      "image_link": "https://static.platzi.com/media/uploads/ramen_711b4f6e26.jpeg",
      "recipe": [
        "Cocina el caldo con huesos de cerdo, jengibre y ajo durante varias horas.",
        "Cocina los fideos de ramen en agua hirviendo.",
        "Sirve los fideos en el caldo caliente.",
        "Añade toppings como huevo cocido, cebolleta y carne de cerdo.",
        "Acompaña con salsa de soja y aceite de sésamo."
      ]
    },
    {
      "id":"9",
      "name": "Hamburguesa Clásica",
      "author": "Chef Tomás Pérez",
      "image_link": "https://example.com/images/hamburguesa_clasica.jpg",
      "recipe": [
        "Forma la carne molida en hamburguesas y sazona con sal y pimienta.",
        "Cocina las hamburguesas en una parrilla o sartén.",
        "Tuesta los panes de hamburguesa.",
        "Coloca la carne en el pan con queso, lechuga, tomate y cebolla.",
        "Acompaña con papas fritas y condimentos al gusto."
      ]
    },
    {
      "id":"10",
      "name": "Brownies de Chocolate",
      "author": "Chef Sofía Durán",
      "image_link": "https://static.platzi.com/media/uploads/Brownies_2ed8f0e619.jpeg",
      "recipe": [
        "Derrite chocolate y mantequilla juntos.",
        "Bate los huevos con azúcar y mezcla con el chocolate derretido.",
        "Añade harina y nueces picadas.",
        "Vierte la mezcla en un molde y hornea a 180°C por 25 minutos.",
        "Corta en cuadros y sirve."
      ]
    }
  ]
}