import 'package:flutter/material.dart';
import 'package:gastronomy/utils/colors.dart';
// add section
class RestaurantDrinkField extends StatefulWidget {
  @override
  RestaurantDrinkFieldState createState() => RestaurantDrinkFieldState();
}

class RestaurantDrinkFieldState extends State<RestaurantDrinkField> {
  List<TextEditingController> _controllers = [];
  List<TextField> _fields = [];
  int maxField = 0;

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Widget _addTile() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            final controller = TextEditingController();
            final field = Material(
              child: TextField(
                controller: controller,
                // onChanged: (){},
                style: const TextStyle(color: Colors.black, fontSize: 25),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Makanan ${_controllers.length + 1}",
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
            );
            setState(() {
              maxField++;
              if (maxField < 6) {
                _controllers.add(controller);
                // _fields.add(field);
              }
            });
          },
          child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: OPrimaryColor,
                  borderRadius: BorderRadius.circular(1000),
                  border: Border.all(
                    color: OPrimaryColor,
                  )),
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget _listView() {
    return ListView.builder(
      itemCount: _fields.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 41,
                    padding: const EdgeInsets.only(left: 15, bottom: 8),
                    decoration: BoxDecoration(color: const Color(0xffFFFFFF), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey)),
                    child: _fields[index],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _fields.removeAt(index);
                      _controllers.removeAt(index);
                    });
                  },
                  child: Icon(
                    Icons.delete,
                    textDirection: TextDirection.rtl,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        );
      },
    );
  }

  Widget _okButton() {
    return ElevatedButton(
      onPressed: () async {
        String text = _controllers.where((element) => element.text != "").fold("", (acc, element) => acc += "${element.text}\n");
        final alert = AlertDialog(
          title: Text("Count: ${_controllers.length}"),
          content: Text(text.trim()),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"),
            ),
          ],
        );
        await showDialog(
          context: context,
          builder: (BuildContext context) => alert,
        );
        setState(() {});
      },
      child: Text("Submit"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _addTile(),
        Container(height: 280, child: _listView()),
        // _okButton(),
      ],
    );
  }
}
