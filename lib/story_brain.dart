import 'package:destini/main.dart';
import 'package:destini/story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        text:
            'Votre voiture a crevé un pneu sur une route sinueuse en pleine nature, sans réception téléphonique. Vous décidez de faire de l\'auto-stop. Une vieille camionnette rouillée s\'arrête à côté de vous. Un homme aux yeux sans âme et  portant un chapeau à large bord vous ouvre la porte passager et demande : "Je te dépose quelque part mon garçon ?".',
        choice1: 'Je monte. Merci pour votre aide !',
        choice2:
            'Il serait préférable de lui demander d\'abord s\'il est un meurtrier.'),
    Story(
        text: 'Il hoche lentement la tête, imperturbable face à la question.',
        choice1: 'Au moins, il est honnête. Je vais monter à bord.',
        choice2: 'Attendez, je sais comment changer un pneu.'),
    Story(
        text:
            'Alors que vous commencez à conduire, l\'inconnu commence à parler de sa relation avec sa mère. Il devient de plus en plus en colère à chaque minute. Il vous demande d\'ouvrir la boîte à gants. À l\'intérieur, vous trouvez un couteau ensanglanté, deux doigts sectionnés et une cassette audio d\'Elton John. Il tend la main vers la boîte à gants.',
        choice1: 'J\'adore Elton John ! Remettez-lui la cassette audio.',
        choice2:
            'C\'est lui ou moi ! Vous prenez le couteau et le poignardez.'),
    Story(
        text:
            'Quoi ? Quelle excuse bidon ! Saviez-vous que les accidents de la route sont la deuxième cause principale de décès accidentels chez les adultes ?',
        choice1:
            ' ☠️️️☠️️️☠️ Vous commencez à changer le pneu et vous êtes écrasé par un camion !!! Recommencer ?',
        choice2: ''),
    Story(
        text:
            'Alors que vous fracassez la glissière de sécurité et dérivez en direction des rochers acérés en contrebas, vous réfléchissez à la sagesse douteuse de poignarder quelqu\'un pendant qu\'il conduit la voiture dans laquelle vous vous trouvez.',
        choice1: '️️☠️️️☠️️️☠️ Recommencer ?',
        choice2: ''),
    Story(
        text:
            'Vous vous liez d\'amitié avec le meurtrier tout en chantant à tue-tête les couplets de "Can You Feel the Love Tonight". Il vous dépose à la prochaine ville. Avant de partir, il vous demande si vous connaissez de bons endroits pour se débarrasser des corps. Vous répondez : "Essaye la jetée".',
        choice1:
            '️️☠️️️☠️️️☠️Le corps est retrouvé 3 jours plus tard, et une goutte de sang sur votre jean correspond, vous prenez perpet\' et mourrez en prison! Recommencer ?',
        choice2: '')
  ];

  int _currentStory = 0;

  getStory() {
    return _storyData[_currentStory].text;
  }

  getChoice1() {
    return _storyData[_currentStory].choice1;
  }

  getChoice2() {
    return _storyData[_currentStory].choice2;
  }

  nextStory(int userNumberChoice) {
    if (_currentStory == 0) {
      userNumberChoice == 1 ? _currentStory = 2 : _currentStory = 1;
    } else if (_currentStory == 1) {
      userNumberChoice == 1 ? _currentStory = 2 : _currentStory = 3;
    } else if (_currentStory == 2) {
      userNumberChoice == 1 ? _currentStory = 5 : _currentStory = 4;
    } else {
      storyBrain.restart();
    }
  }

  restart() {
    _currentStory = 0;
  }

  buttonShouldBeVisible() {
    if (_currentStory <= 2) {
      return true;
    } else {
      return false;
    }
  }
}
