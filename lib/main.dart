import 'package:flutter/material.dart';
// ignore: unused_import

import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: ButterfliesList(),
    appBar: AppBar(title: const Text("Butterflies")),
  )));
}

// ignore: use_key_in_widget_constructors
class ButterfliesList extends StatefulWidget {
  @override
  _ButterfliesListState createState() => _ButterfliesListState();
}

class _ButterfliesListState extends State<ButterfliesList> {
  final List<String> _butterflies = <String>[
    // ignore: prefer_const_constructors
    "Adonis",
    "Duke of Burgundy",
    "Monarch",
    "Painted Lady",
    "Swallowtail"
  ];

  final List<String> _descriptions = <String>[
    "This beautiful species of butterfly is one of the most characteristic of unimproved southern chalk downland, where it can be seen flying low over shortly grazed turf (typically steep, south-facing slopes). The males have brilliant sky-blue wings, while the females are chocolate brown and far less conspicuous. Both sexes have distinctive black lines that enter or cross the white fringes of the wings.",
    "Small and orange and brown, like a tiny fritillary. Undersides of hind wings have rows of white spots. Lives in small colonies on grassland or woodland clearings. This small butterfly frequents scrubby grassland and sunny woodland clearings, typically in very low numbers. The adults rarely visit flowers and most sightings are of the territorial males as they perch on a prominent leaf at the edge of scrub. The females are elusive and spend much of their time resting or flying low to the ground looking for suitable egg-laying sites.",
    "The Monarch is the largest butterfly seen in the British Isles and is also one of our rarest migrants. Known for its ability to travel large distances, the migrations in North America are one of the greatest natural phenomena in the world - where the adult butterflies can migrate from as far north as Canada to the overwintering grounds in Mexico, the west coast of California and Florida.Millions of the butterflies make a 2,000-mile (3,220km) journey each year from Canada to pass the winter in central Mexico's warmer weather. But climate change, pesticides and the incursion of illegal loggers have seen the forests dwindle and with them, the number of monarchs.",
    "The Painted Lady is a long-distance migrant, which causes the most spectacular butterfly migrations observed in Britain and Ireland. Each year, it spreads northwards from the desert fringes of North Africa, the Middle East, and central Asia, recolonising mainland Europe and reaching Britain and Ireland. In some years it is an abundant butterfly, frequenting gardens and other flowery places in late summer.",
    "A large, strong-flying butterfly restricted to the Norfolk Broads, although migrants are occasionally seen elsewhere. Pale yellow wings with black veins and blue margins.This is one of our rarest and most spectacular butterflies. The British race britannicus is a specialist of wet fenland and is currently restricted to the Norfolk Broads. Here the adults can be seen flying powerfully over open fen vegetation, stopping to feed on flowers such as thistles and Ragged-Robin."
  ];

  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
          _selectedIndex == -1
              ? "Nothing selected"
              : " ${_butterflies[_selectedIndex]}",
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 30)),
      // ignore: avoid_unnecessary_containers
      SizedBox(
          height: 400.0,
          //padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Text(_selectedIndex == -1 ? '' : _descriptions[_selectedIndex],
              style: const TextStyle(fontSize: 20))),
      // ignore: sized_box_for_whitespace
      Expanded(
          child: SizedBox(
              height: 200.0,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemExtent: 200,
                  itemCount: _butterflies.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => ListTile(
                      onTap: () {
                        setState(() {
                          // устанавливаем индекс выделенного элемента
                          _selectedIndex = index;
                        });
                      },
                      title: Text('🦋 ' + _butterflies[index],
                          style: const TextStyle(fontSize: 24)),
                      selected: index == _selectedIndex))))
    ]);
  }
}
