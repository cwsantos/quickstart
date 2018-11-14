import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-hero',
  templateUrl: 'hero_component.html',
  directives: [coreDirectives, formDirectives],
  styleUrls: [],
)

class HeroComponent {
  final title = 'Tour of Heroes';
  @Input()
  Hero hero;
}
