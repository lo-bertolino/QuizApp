class Answer {
  String string;
  bool isCorrect;

  Answer(this.string, this.isCorrect);
}

class Question {
  String string;
  List<Answer> answers = List(4);

  Question(
    this.string,
    this.answers,
  ) : assert(answers?.length == 4);
}

List<Question> db = [
  Question(
    'Dove nacque Galileo Galilei?',
    [
      Answer('Pisa', true),
      Answer('Torino', false),
      Answer('Milano', false),
      Answer('Roma', false),
    ],
  ),
  Question(
    'In che anno è stato lanciato il telescopio Hubble?',
    [
      Answer('1990', true),
      Answer('1999', false),
      Answer('2004', false),
      Answer('1987', false),
    ],
  ),
  Question(
    'Dov\'è Stonehenge?',
    [
      Answer('Inghilterra', true),
      Answer('Irlanda', false),
      Answer('Francia', false),
      Answer('Svezia', false),
    ],
  ),
  Question(
    'In che stato si trova la Valle dei Re?',
    [
      Answer('Egitto', true),
      Answer('Tunisia', false),
      Answer('Florida', false),
      Answer('Spagna', false),
    ],
  ),
  Question(
    'Il dipinto "l\'Ultima Cena" è di..',
    [
      Answer('Da Vinci', true),
      Answer('Il Caravaggio', false),
      Answer('Raffaello', false),
      Answer('Botticelli', false),
    ],
  ),
];
