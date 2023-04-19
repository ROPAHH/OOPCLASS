// i will define a class called Cellphone
abstract class Cellphone {
  String type;
  int size;

  //constructor
  Cellphone(this.type, this.size);

  //Abstract method
  void voiceAssistant();

  //overide toStrinng() method
  @override
  String toString() {
    return 'Type: $type, Size: $size';
  }
}
//subclass iphone

class Iphone extends Cellphone {
  //attributes
  int colourNumber;
  //constructor
  Iphone(String type, int size, this.colourNumber) : super(type, size);

  @override
  void voiceAssistant() {
    [];
    print('$type the iphone makes has Siri');
  }

  @override
  String toString() {
    return 'Iphone - Type: $type, Size: $size, ColourNumber: $colourNumber';
  }
}

class Samsung extends Cellphone {
  double homebuttons;

  Samsung(String type, int size, this.homebuttons) : super(type, size);

  @override
  void voiceAssistant() {
    print("$type the samsung has google");
  }

  @override
  String toString() {
    return 'Samsung - Type: $type,Size: $size, Homebutton: $homebuttons';
  }
}

void main() {
  Iphone mini = Iphone('Mini', 252, 158);

  Samsung promax = Samsung('Galaxy', 245, 3);

  print(mini);
  print(promax);
}
