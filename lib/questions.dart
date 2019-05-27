class Question {
  String question;
  List<Answer> answers = List(4);

  Question(this.question, this.answers);
}

class Answer {
  String answer;
  bool correct;
  Answer(this.answer, this.correct);
}

List<Question> db = [
  Question("Da che età , secondo lo zio Gigi, i nipoti avrebbero potuto sposarsi?", [
    Answer("Mai", false),
    Answer("Dopo i 40 anni", false),
    Answer("dai 30 in poi", true),
    Answer("Sempre", false)
  ]),
  Question("Durante che gita Camillo si è lanciato alla rincorsa di un capriolo?", [
    Answer("Alla valle del cervo", false),
    Answer("Alla grotta del lupo", false),
    Answer("Alla cascata dell’orso", true),
    Answer("Al lago della lontra", false)
  ]),
  Question("Chi pronunció la celebre frase 'Voglio la mia mamma qui immediatamente?'", [
    Answer("Mario", false),
    Answer("Giorgio", true),
    Answer("Ugo", false),
    Answer("Flavia", false)
  ]),
  Question("Qual'era l'indirizzo di casa a Trieste?", [
    Answer("Via Giustinelli", true),
    Answer("Via San Marco", false),
    Answer("Via Mazzini", true),
    Answer("Via Pondares", false)
  ]),
  Question("Qual'era il nome della Chiesa che frequentavi a Trieste?", [
    Answer("Notre Dame de Sion", true),
    Answer("Parrocchia di Santa Maria Maggiore", false),
    Answer("Cattedrale di San Giusto Martire", false),
    Answer("Basilica del Cristo Salvatore", false)
  ]),
  Question("Da quale esclamazione di Giulia nasce il tuo soprannome “Marmelade”?", [
    Answer("Dov'è la mamma?", false),
    Answer("Voglio la Marmellata!", false),
    Answer("Mamma è lì!", true),
    Answer("Mamma andiamo!", false)
  ]),
  Question("Dov'eravamo quella volta che lo zio è caduto nel fiume?", [
    Answer("Sull'Isonzo", false),
    Answer("Sul Tagliamento", false),
    Answer("Sul Torre", true),
    Answer("Sul Malina", false)
  ]),
  Question("Quale piatto facevi sempre trovare a Mario all'arrivo a Castiglione?", [
    Answer("Lasagne", false),
    Answer("Cotoletta alla Milanese", false),
    Answer("Risotto alla Milanese", true),
    Answer("Frico e Polenta", false)
  ]),
  Question("Cosa facevano sempre Giulia e Elena quando arrivavano a Castiglione?", [
    Answer("Raccogliere noci", false),
    Answer("Raccogliere le foglie", false),
    Answer("Pulire la stradina", true),
    Answer("Vedere le camere", false)
  ]),
  Question("Quale ingrediente la Elena non faceva mai mancare sulla tavola per lo zio?", [
    Answer("Sale", true),
    Answer("Pane", false),
    Answer("Olive", false),
    Answer("Olio", false)
  ]),
  Question("La passione per quale attività hai trasmesso alla Giulia? ", [
    Answer("Giardinaggio", false),
    Answer("Patchwork", true),
    Answer("Cucina", false),
    Answer("Origami", false)
  ]),
  Question("Come chiamava la nonna Rita la Zoraida?", [
    Answer("Zorana", false),
    Answer("Zoraia", true),
    Answer("Zorella", false),
    Answer("Zoreina", false)
  ]),
  Question("Il nome di quale monte esclamava Mario da piccolino?", [
    Answer("Monte Faeit", false),
    Answer("Monte Canin", false),
    Answer("Monte Chiampon", false),
    Answer("Monte Cuarnan", true)
  ]),
  Question("Come si chiamava il macellaio di via Villa ad Artegna?", [
    Answer("Piai", true),
    Answer("Codaglio", false),
    Answer("Augustoni", false),
    Answer("Degano", false)
  ]),
  Question("Cosa si doveva dire a Camillo perchè so raddrizzasse le guance?", [
    Answer("Sorridi!", false),
    Answer("Metti a posto la dentiera!", true),
    Answer("Seduto!", false),
    Answer("Raddrizza le guance!", false)
  ]),
  Question("Qual'è il momento più bello della vacanza e Castigione di Enrico? Quando..", [
    Answer("è caduto incipandosi", false),
    Answer("è stato ricoperto di fango", true),
    Answer("si è perso", false),
    Answer("ha fatto una sorpresa", false)
  ]),
  Question("Quale nipote si è tuffatto nel letamaio di testa aggrapato a Camillo?", [
    Answer("Ugo", true),
    Answer("Giorgio", false),
    Answer("Mario", false),
    Answer("Flavia", false)
  ]),
  Question("A quale nipote con la conginutivite è stata strofinata la neve in viso?", [
    Answer("Giulia", true),
    Answer("Elena", false),
    Answer("Anna", false),
    Answer("Teresa", false)
  ]),
  Question("Qual'è la tua esclamazione tipica?", [
    Answer("Perdindirindina", false),
    Answer("Ciumbia ve'", true),
    Answer("Poffarbacco", false),
    Answer("Santa Polenta", false)
  ]),
  Question("Come faceva di cognome il primo fidanzato di Valeria (14enne) ad Artegna?", [
    Answer("Germani", false),
    Answer("Romanini", true),
    Answer("Veneziani", false),
    Answer("Romanelli", false)
  ]),
  Question(
      "Quale località di villeggiatura in Austria-Ungheria fu in gran parte costruita da Angelo Domini (bisnonno della zia)?",
      [
        Answer("Bad Ischl", false),
        Answer("Baden", false),
        Answer("Zell am See", false),
        Answer("Bad Gastein", true)
      ]),
  Question("Cosa raccoglieva facilmente la nonna Rita?", [
    Answer("Funghi", false),
    Answer("Monete", false),
    Answer("Quadrifogli", true),
    Answer("Margherite", false)
  ]),
  Question("Cosa utilizzavi per comunicare in modo segreto con Teresa ad Artegna?", [
    Answer("Un cifrario tedesco", false),
    Answer("Un liguaggio inventato", true),
    Answer("La lingua dei segni", false),
    Answer("Due fischietti", false)
  ]),
  Question("Chi ha rubato il libro azzurro dello zio", [
    Answer("Ugo", false),
    Answer("Giorgio", true),
    Answer("Mario", false),
    Answer("Flavia", false)
  ]),
  Question(
      "Per inserire quale animale Camillo ha trascinato uno dei nipoti nel letamaio?", [
    Answer("Anatra", false),
    Answer("Gallina", true),
    Answer("Maiale", false),
    Answer("Rana", false)
  ]),
];
