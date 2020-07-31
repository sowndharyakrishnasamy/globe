import 'package:flutter/material.dart';
import 'package:globe/themes/colors.dart';
import 'package:globe/resources/strings.dart';

class MoviesCard extends StatelessWidget {
  final String title;
  final String titleimage;
  final List<String> movies;
  const MoviesCard({
    @required this.title,
    @required this.titleimage,
    @required this.movies,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(color: AppColors.COLOR_WHITE),
                ),
                SizedBox(
                  width: 4,
                ),
                Image(image: AssetImage(titleimage)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: GestureDetector(
                child: Text(
                  Strings.VIEW_ALL,
                  style: TextStyle(
                    color: AppColors.COLOR_LIGHTISH_BLUE,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 190,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (BuildContext movie, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Container(
                  width: 140,
                  height: 190,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        movies[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 30),
      ],
    ));
  }
}
