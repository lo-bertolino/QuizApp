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
    'In che anno è stata fondata JEToP?',
    [
      Answer('1995', true),
      Answer('1992', false),
      Answer('2001', false),
      Answer('1988', false),
    ],
  ),
  Question(
    'Qual è il nome del vicepresidente di Jade Italia?',
    [
      Answer('Sofia Frau', true),
      Answer('Marco Barisione', false),
      Answer('Jessica Rota', false),
      Answer('Isabella Florio', false),
    ],
  ),
  Question(
    'Quanti JEurs ci sono in Europa?',
    [
      Answer('28k', true),
      Answer('50k', false),
      Answer('20k', false),
      Answer('12k', false),
    ],
  ),
  Question(
    'Qual è il compleanno di JEToP?',
    [
      Answer('27 Novembre', true),
      Answer('12 Febbraio', false),
      Answer('3 Ottobre', false),
      Answer('2 Dicembre', false),
    ],
  ),
  Question(
    'Ma quanto è bello',
    [
      Answer('Enrico Pavanello', true),
      Answer('Enrico Pavanello', true),
      Answer('Enrico Pavanello', true),
      Answer('Enrico Pavanello', true),
    ],
  ),
  Question(
    'Quante JE ci sono in Italia?',
    [
      Answer('20', true),
      Answer('18', false),
      Answer('12', false),
      Answer('25', false),
    ],
  ),
];
