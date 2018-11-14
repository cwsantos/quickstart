import 'package:angular_forms/angular_forms.dart';
import 'package:angular/angular.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';
import 'src/mock_heros.dart';
import 'src/hero.dart';
import 'dart:async';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives,
                formDirectives,
                HeroComponent],
  providers: [ClassProvider(HeroService)],
  styleUrls: ['app_component.css']
)

class AppComponent implements OnInit {
  final title = 'Tour of Heroes';
  final HeroService _heroService;
  List<Hero> heroes = mockHeroes;
  Hero selected;

  /* NEEDED when using a Service */
  AppComponent(this._heroService);

  /* async/await needed when using Future in Component or Service */
  Future<void> _getHeroes() async => heroes = await _heroService.getAll();

  void onSelect(Hero hero) => selected = hero;

  /* @override (optional) */
  void ngOnInit() => _getHeroes();
}
