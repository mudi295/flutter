import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPM Sesi 1',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF641B35),
        ),
      ),
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  // =========================
  // COLOR PALETTE
  // =========================
  static const Color burgundy = Color(0xFF4A1028);
  static const Color maroon = Color(0xFF711C3A);
  static const Color wine = Color(0xFF8C3153);
  static const Color purple = Color(0xFF69427D);
  static const Color background = Color(0xFFF7F4F7);
  static const Color textDark = Color(0xFF2E1B25);
  static const Color textGrey = Color(0xFF80757C);

  // =========================
  // TAMBAH
  // =========================
  void tambah() {
    setState(() {
      counter++;
    });
  }

  // =========================
  // KURANG
  // =========================
  void kurang() {
    if (counter == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: burgundy,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          content: const Row(
            children: [
              Icon(
                Icons.info_outline_rounded,
                color: Colors.white,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Nilai counter tidak boleh kurang dari 0.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      return;
    }

    setState(() {
      counter--;
    });
  }

  // =========================
  // RESET
  // =========================
  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isGenap = counter % 2 == 0;

    return Scaffold(
      backgroundColor: background,

      // ==========================================================
      // APP BAR
      // ==========================================================
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 78,
        titleSpacing: 24,

        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PPM SESI 1',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: textGrey,
                letterSpacing: 1.8,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Counter Application',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: textDark,
              ),
            ),
          ],
        ),

        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: burgundy.withOpacity(0.08),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(
              Icons.apps_rounded,
              color: burgundy,
            ),
          ),
        ],
      ),

      // ==========================================================
      // BODY
      // ==========================================================
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ======================================================
            // HEADER GREETING
            // ======================================================
            const Text(
              'Selamat datang 👋',
              style: TextStyle(
                fontSize: 14,
                color: textGrey,
              ),
            ),

            const SizedBox(height: 4),

            const Text(
              'Kelola nilai counter kamu',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: textDark,
              ),
            ),

            const SizedBox(height: 22),

            // ======================================================
            // PROFILE CARD
            // ======================================================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    burgundy,
                    maroon,
                    purple,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: burgundy.withOpacity(0.25),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                children: [

                  // Profile icon
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.25),
                      ),
                    ),
                    child: const Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                      size: 34,
                    ),
                  ),

                  const SizedBox(width: 16),

                  // Identity
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          'Muhamad Hamudi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Row(
                          children: [
                            Icon(
                              Icons.badge_outlined,
                              color: Colors.white70,
                              size: 16,
                            ),
                            SizedBox(width: 7),
                            Text(
                              '20240040028',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 4),

                        Row(
                          children: [
                            Icon(
                              Icons.school_outlined,
                              color: Colors.white70,
                              size: 16,
                            ),
                            SizedBox(width: 7),
                            Text(
                              'Teknik Informatika • TI24G',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            // ======================================================
            // COUNTER LABEL
            // ======================================================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Nilai Counter',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: textDark,
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: isGenap
                        ? const Color(0xFFEDE7F1)
                        : const Color(0xFFF5E4EA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    isGenap ? 'GENAP' : 'GANJIL',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: isGenap ? purple : maroon,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // ======================================================
            // COUNTER CARD
            // ======================================================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(25, 28, 25, 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                  color: burgundy.withOpacity(0.06),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [

                  // Small top icon
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2EAF0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      isGenap
                          ? Icons.numbers_rounded
                          : Icons.tag_rounded,
                      color: isGenap ? purple : maroon,
                      size: 25,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Counter number
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    transitionBuilder: (
                      Widget child,
                      Animation<double> animation,
                    ) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    child: Text(
                      '$counter',
                      key: ValueKey(counter),
                      style: TextStyle(
                        fontSize: 82,
                        height: 1,
                        fontWeight: FontWeight.w800,
                        color: isGenap ? purple : maroon,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Status
                  Text(
                    isGenap
                        ? 'Angka Genap'
                        : 'Angka Ganjil',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: isGenap ? purple : maroon,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'Nilai akan berubah sesuai tombol yang dipilih',
                    style: TextStyle(
                      fontSize: 12,
                      color: textGrey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // ======================================================
            // BUTTON TITLE
            // ======================================================
            const Text(
              'Kontrol Counter',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: textDark,
              ),
            ),

            const SizedBox(height: 12),

            // ======================================================
            // CONTROL BUTTONS
            // ======================================================
            Row(
              children: [

                Expanded(
                  child: _controlButton(
                    icon: Icons.remove_rounded,
                    title: 'Kurang',
                    subtitle: '− 1',
                    color: maroon,
                    onTap: kurang,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _controlButton(
                    icon: Icons.refresh_rounded,
                    title: 'Reset',
                    subtitle: 'Kembali 0',
                    color: purple,
                    onTap: reset,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _controlButton(
                    icon: Icons.add_rounded,
                    title: 'Tambah',
                    subtitle: '+ 1',
                    color: burgundy,
                    onTap: tambah,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // ======================================================
            // FOOTER INFORMATION
            // ======================================================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF0E8EE),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: const Icon(
                      Icons.info_outline_rounded,
                      color: burgundy,
                      size: 20,
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Expanded(
                    child: Text(
                      'Counter tidak dapat bernilai negatif.',
                      style: TextStyle(
                        fontSize: 12,
                        color: textDark,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 22),

            // Footer
            const Center(
              child: Text(
                'PPM Sesi 1 • Teknik Informatika',
                style: TextStyle(
                  fontSize: 11,
                  color: textGrey,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ==============================================================
  // CONTROL BUTTON WIDGET
  // ==============================================================
  Widget _controlButton({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 125,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: color.withOpacity(0.10),
            ),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.08),
                blurRadius: 15,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 25,
                ),
              ),

              const SizedBox(height: 9),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: textDark,
                ),
              ),

              const SizedBox(height: 2),

              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 10,
                  color: color,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}