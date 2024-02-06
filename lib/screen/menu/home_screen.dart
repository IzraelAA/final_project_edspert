import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project_edspert/model/home/movie_model.dart';
import 'package:final_project_edspert/screen/content/detail_content_screen.dart';
import 'package:final_project_edspert/utils/edspert_color.dart';
import 'package:final_project_edspert/utils/image_dir.dart';
import 'package:final_project_edspert/utils/svg_dir.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _current = 0;
  final CarouselController _controller = CarouselController();

  List<MovieModel> listMovie = [
    MovieModel(
        title: "Star Wars : The Last",
        image: ImageDir.imageItem1,
        rating: "4",
        description:
            "Dalam film Lucasfilm Star Wars: The Last Jedi, kisah keluarga Skywalker diteruskan ketika para pahlawan The Force Awakens bergabung dengan para legenda galaksi dalam sebuah petualangan mencengangkan untuk menguak kunci misteri lintas zaman mengenai the Force serta terkuaknya secara mengejutkan berbagai rahasia masa lalu.\nFilm ini dibintangi Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Lupita Nyong’o, Andy Serkis, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, Kelly Marie Tran, Laura Dern dan Benicio Del Toro.\nStar Wars: The Last Jedi ditulis & disutradarai oleh Rian Johnson dan diproduseri Kathleen Kennedy serta Ram Bergman. J.J. Abrams, Tom Karnowski dan Jason McGatlin sebagai produser eksekutif."),
    MovieModel(
        title: "Fast & Furious 9",
        image: ImageDir.imageItem1,
        rating: "5",
        description:
            "Dalam film Lucasfilm Star Wars: The Last Jedi, kisah keluarga Skywalker diteruskan ketika para pahlawan The Force Awakens bergabung dengan para legenda galaksi dalam sebuah petualangan mencengangkan untuk menguak kunci misteri lintas zaman mengenai the Force serta terkuaknya secara mengejutkan berbagai rahasia masa lalu.\nFilm ini dibintangi Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Lupita Nyong’o, Andy Serkis, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, Kelly Marie Tran, Laura Dern dan Benicio Del Toro.\nStar Wars: The Last Jedi ditulis & disutradarai oleh Rian Johnson dan diproduseri Kathleen Kennedy serta Ram Bergman. J.J. Abrams, Tom Karnowski dan Jason McGatlin sebagai produser eksekutif."),
    MovieModel(
        title: "The Conjuring 3",
        image: ImageDir.imageItem1,
        rating: "2",
        description:
            "Dalam film Lucasfilm Star Wars: The Last Jedi, kisah keluarga Skywalker diteruskan ketika para pahlawan The Force Awakens bergabung dengan para legenda galaksi dalam sebuah petualangan mencengangkan untuk menguak kunci misteri lintas zaman mengenai the Force serta terkuaknya secara mengejutkan berbagai rahasia masa lalu.\nFilm ini dibintangi Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Lupita Nyong’o, Andy Serkis, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, Kelly Marie Tran, Laura Dern dan Benicio Del Toro.\nStar Wars: The Last Jedi ditulis & disutradarai oleh Rian Johnson dan diproduseri Kathleen Kennedy serta Ram Bergman. J.J. Abrams, Tom Karnowski dan Jason McGatlin sebagai produser eksekutif."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EdspertColor.primaryColor,
      appBar: AppBar(
        leading: Image.asset(ImageDir.dummyProfile),
        actions: const [
          Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      body: PersistentTabView(
        backgroundColor: EdspertColor.primaryColor,
        resizeToAvoidBottomInset: true,
        navBarHeight: 90,
        navBarStyle: NavBarStyle.style6,
        decoration: NavBarDecoration(
          colorBehindNavBar: EdspertColor.primaryColor,
        ),
        context,
        screens: [
          _bodyScreen(),
          Text("Ticket"),
          Text("Bioskop"),
          Text("User"),
        ],
        items: [
          _bottomNavigationBar(
            SvgDir.home,
            "Home",
          ),
          _bottomNavigationBar(
            SvgDir.ticket,
            "Ticket",
          ),
          _bottomNavigationBar(
            SvgDir.bioskop,
            "Bioskop",
          ),
          _bottomNavigationBar(
            SvgDir.user,
            "User",
          ),
        ],
      ),
    );
  }

  Widget _bodyScreen() {
    return Container(
      color: EdspertColor.primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            bannerHome(),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sedang Tayang",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Lihat Semua",
                          style: GoogleFonts.openSans(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.6),
                        size: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  listMovie.length,
                  (index) => cardMovie(
                    listMovie[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PersistentBottomNavBarItem _bottomNavigationBar(
    String svgDir,
    String title,
  ) {
    return PersistentBottomNavBarItem(
      icon: Column(
        children: [
          SvgPicture.asset(
            svgDir,
            width: 24,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget cardMovie(MovieModel movieModel) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailContentScreen.routeName,
          arguments: {'movieModel': movieModel},
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(movieModel.image, fit: BoxFit.fill, width: 150),
          const SizedBox(
            height: 12,
          ),
          Text(movieModel.title,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(
            height: 6,
          ),
          RatingBar.builder(
            initialRating: double.parse(movieModel.rating),
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 10,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
              size: 10,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  Widget bannerHome() {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: CarouselSlider(
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        'text $i',
                        style: const TextStyle(fontSize: 16.0),
                      ));
                },
              );
            }).toList(),
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
