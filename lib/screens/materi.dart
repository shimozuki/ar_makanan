import 'package:flutter/material.dart';

class MateriScreen extends StatefulWidget {
  @override
  _MateriScreenState createState() => _MateriScreenState();
}

class _MateriScreenState extends State<MateriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      // appBar: AppBar(
      //   title: Text("Flutter BackdropFilter Widget Demo"),
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      // ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              style: ElevatedButton.styleFrom(
                primary:
                    Colors.cyan[100], // Equivalent to the 'color' parameter
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        20))), // Equivalent to the 'shape' parameter
                padding:
                    EdgeInsets.all(13), // Equivalent to the 'padding' parameter
              ),
              child: Text(
                'Apa Sih Anemia',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                dialog(context);
              },
              style: ElevatedButton.styleFrom(
                primary:
                    Colors.cyan[100], // Equivalent to the 'color' parameter
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        20))), // Equivalent to the 'shape' parameter
                padding:
                    EdgeInsets.all(13), // Equivalent to the 'padding' parameter
              ),
              child: Text(
                'Penyebab Anemia',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      )), //center
    );
  }

  void showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text('Apasih Anemia Itu?'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Anemia adalah gangguan darah yang ditandai dengan jumlah sel darah merah yang rendah atau ketika sel darah merah tidak berfungsi dengan baik.',
          ),
          SizedBox(height: 10),
          Text(
            'Sel darah merah memiliki kandungan protein ber-zat besi yang disebut hemoglobin, hemoglobin berfungsi untuk mengikat dan menyalurkan oksigen untuk sel-sel tubuh.',
          ),
          SizedBox(height: 10),
          Text(
            'Pada kondisi anemia jumlah sel darah merah dan hemoglobin berkurang sehingga oksigen tidak tersuplai dengan baik dan penderita mengeluh lemas dan pucat.',
          ),
          SizedBox(height: 10),
          Text(
            'Normalnya, orang dewasa menderita anemia apabila kadar hemoglobin darahnya di bawah 14 gram per desiliter pada laki-laki dan 12 gram per desiliter untuk wanita.',
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Tutup'),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void dialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text('Apasih Penyebab Anemia?'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Sebelumnya, kita telah membahas mengenai jenis anemia secara spesifik yang dibedakan berdasarkan penyebabnya. Namun, bila ditinjau secara umum, penyebab anemia adalah sebagai berikut:',
          ),
          SizedBox(height: 10),
          Text(
            '1. Adanya masalah pada sistem kekebalan tubuh',
          ),
          SizedBox(height: 10),
          Text(
            '2. Memiliki riwayat masalah kesehatan kronis',
          ),
          SizedBox(height: 10),
          Text(
            '3. Faktor genetik, apabila orang tua memiliki riwayat anemia dan penyakit kelainan darah terkait lainnya',
          ),
          SizedBox(height: 10),
          Text(
            '4. Memiliki masalah kesehatan dengan sumsum tulang belakang',
          ),
          SizedBox(height: 10),
          Text(
            '5. Sedang dalam masa kehamilan',
          ),
          SizedBox(height: 10),
          Text(
            '6. Kekurangan asupan vitamin dan mineral',
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Tutup'),
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
