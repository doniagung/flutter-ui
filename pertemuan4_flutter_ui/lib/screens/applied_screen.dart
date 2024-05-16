import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppliedScreen extends StatelessWidget {
  const AppliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/background.png',
                  height: 146,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 74, left: 24, right: 24),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Jobify.',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          const Spacer(),
                          SvgPicture.asset('assets/svgs/ic_notification.svg'),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                              width: 42,
                              height: 42,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(21)),
                              child: Image.network(
                                  'https://gravatar.com/avatar/27205e5c51cb03f862138b22bcb5dc20f94a342e744ff6df1b8dc8af3c865109.jpg'))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'My Application',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF1B2124)),
                            ),
                            const Spacer(),
                            Text(
                              'All',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14, color: Color(0xFF7F879E)),
                            ),
                            SvgPicture.asset('assets/svgs/ic_dropdown.svg')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 6, right: 6, top: 6),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/svgs/ic_pinterest.svg'),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pinterest',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text('Senior UI/UX Designer',
                                          style: GoogleFonts.plusJakartaSans(
                                              fontSize: 12,
                                              color: Color(0xFF7F879E))),
                                    ],
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      // Tambahkan logika onTap di sini
                                    },
                                    child: Container(
                                      width: 72,
                                      height: 27,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFF7E6),
                                        borderRadius: BorderRadius.circular(
                                            4), // Bentuk sudut
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Pending',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFFFFC657),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 20, top: 20),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/svgs/ic_location.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'California, Freelance ,WFO',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF7F879E)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 20, top: 20),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/svgs/ic_dolar.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '25,000 dollars ',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xFF1B2124)),
                                  ),
                                  Text(
                                    '/Month',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF7F879E)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 14,
                                    right: 14,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Senior UI/UX Designer needed, for collaborate with',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7F879E)),
                                      ),
                                      Text(
                                        'team and developer as full time designer. by having ',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7F879E)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: Color(0xFF3860E2), width: 2)),
                                child: Center(
                                  child: Text(
                                    'Applied',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3860E2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 6, right: 6, top: 6),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/svgs/ic_discord.svg'),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Discord',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text('Junior UI Designer',
                                          style: GoogleFonts.plusJakartaSans(
                                              fontSize: 12,
                                              color: Color(0xFF7F879E))),
                                    ],
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      // Tambahkan logika onTap di sini
                                    },
                                    child: Container(
                                      width: 72,
                                      height: 27,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE4FAE8),
                                        borderRadius: BorderRadius.circular(
                                            4), // Bentuk sudut
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Approved',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFF4CD964),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 20, top: 20),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/svgs/ic_location.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Purwokerto, Contract, WFO',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF7F879E)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 20, top: 20),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/svgs/ic_dolar.svg'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '50,000 dollars ',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xFF1B2124)),
                                  ),
                                  Text(
                                    '/Month',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF7F879E)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 14,
                                    right: 14,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Senior UI/UX Designer needed, for collaborate with',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7F879E)),
                                      ),
                                      Text(
                                        'team and developer as full time designer. by having ',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF7F879E)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () => {},
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: Color(0xFF3860E2), width: 2)),
                                child: Center(
                                  child: Text(
                                    'Applied',
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3860E2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {
          // Handle bottom navigation item tap
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/ic_home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/ic_saved.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/ic_apply.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/ic_masage.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/ic_profil.svg'),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
