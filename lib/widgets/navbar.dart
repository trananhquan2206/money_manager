import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ClipPath(
            clipper: BottomWaveClipper(),
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.yellowAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, bottom: 15),
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quân Pro',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'trananhquan2206@gmail.com',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            indent: 15,
            endIndent: 15,
            color: Colors.grey,
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.orange,
            ),
            title: const Text(
              'Trang chủ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Xử lý sự kiện khi nhấn vào mục Home
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle,
              color: Colors.orange,
            ),
            title: const Text(
              'Tài khoản',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Xử lý sự kiện khi nhấn vào mục Profile
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.orange,
            ),
            title: const Text(
              'Cài đặt',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Xử lý sự kiện khi nhấn vào mục Settings
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.archive_rounded,
              color: Colors.orange,
            ),
            title: const Text(
              'Chức năng xuất Excel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Xử lý sự kiện khi nhấn vào mục Settings
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.star,
              color: Colors.orange,
            ),
            title: const Text(
              'Đánh giá',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Xử lý sự kiện khi nhấn vào mục Settings
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: Colors.orange,
            ),
            title: const Text(
              'Chia sẻ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Xử lý sự kiện khi nhấn vào mục Settings
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.email,
              color: Colors.orange,
            ),
            title: const Text(
              'Phản hồi qua email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Xử lý sự kiện khi nhấn vào mục Settings
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text(
              'Đăng xuất',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Xử lý sự kiện khi nhấn vào mục Logout
            },
          ),
        ],
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 20);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 20);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    var secondControlPoint = Offset(size.width * 3 / 4, size.height - 40);
    var secondEndPoint = Offset(size.width, size.height - 20);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
