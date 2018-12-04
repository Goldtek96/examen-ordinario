PFont f;
int poblacionMax;
float rangoMutacion;
String MiFrase;
Poblacion Poblacion;
 
void setup() {
  MiFrase = "1581696/1579183";
  poblacionMax= 300;
  rangoMutacion = 0.001;
   Poblacion = new Poblacion(MiFrase, rangoMutacion, poblacionMax);
}
 
void draw() {

  Poblacion.naturalSelection();

  Poblacion.generate();

  Poblacion.calcFitness();
  Informacion();

  if (Poblacion.finished()) {
    noLoop();
  }
}
 
void Informacion() {
  String respuesta = Poblacion.getBest();
   println("Matriculas ", respuesta);
}
