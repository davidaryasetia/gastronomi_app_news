import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' as dom;

List<String> parseHtmlList(String htmlString) {
  List<String> items = [];
  dom.Document document = html_parser.parse(htmlString);
  var listElements = document.querySelectorAll('li');
  for (var element in listElements) {
    items.add(element.text);
  }
  return items;
}
