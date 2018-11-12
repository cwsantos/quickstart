import 'package:angular_forms/angular_forms.dart';
import 'package:angular/angular.dart';
import 'src/hero_component.dart';
import 'src/mock_heros.dart';
import 'src/hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, formDirectives],
  styleUrls: ['app_component.css']
)
class AppComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;
  Hero selected;
  void onSelect(Hero hero) => selected = hero;
}