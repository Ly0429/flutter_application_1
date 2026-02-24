import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Barra superior 
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back),
                    Text(
                      "Product - Rick and Morty", //Este es el titulo que decide colocar con base a la imagen y descripcion de Rick
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Icon(Icons.star_border),
                  ],
                ),
              ),

              // Imagen principal de rick que habia manejado en la clase
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 250,
                width: double.infinity,
                child: const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://imagenes2.eltiempo.com/files/og_thumbnail/uploads/2017/10/03/59d322ad01c2c.jpeg',
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Description
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),

              const SizedBox(height: 10),

              //Aqui deje la descripción que realice en clase
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "It is an animated science fiction and dark humor series created by Dan Harmon and Justin Roiland."
                  "Follow the interdimensional adventures of Rick and Morty. "
                  "It combines comedy and family situations in each episode.",
                ),
              ),

              const SizedBox(height: 20),

              // Color
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ), // Esta es la seccion del texto de color
                child: Text(
                  "Color:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ), //aqui añadi los 4 circulos de la seccion de color que se piden en la actividad
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 238, 134, 49),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 170, 60, 233),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Añadi los botones inferiores de add to cart
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.favorite_border,
                      ), //Aqui añadi el corazón
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//En este codigo utilice, Column, Row, Padding y SizedBox, y container, quite lo de appBar que se habia manejado en clase porque en la actividad no lo pide igual que el center.
