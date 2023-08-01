import '../model/quiz_data.dart';

class BiologiyaQuizRepository {
  static List<QuizData> biologySet() {
    List<QuizData> data = [];

//1
    data.add(QuizData(
        questionText: "Apa Itu Anemia?",
        v1: "A.Tekanan darah rendah",
        v2: "B.Kadar hb kurang dari normal",
        v3: "C.Kadar hb lebih dari normal",
        v4: "D.Tekanan darah tinggi",
        trueAnswer: "A"));
//2
    data.add(QuizData(
        questionText: "Apa Gejala anemia?",
        v1: "A.2L",
        v2: "B.3L",
        v3: "C.5L",
        v4: "D.7L",
        trueAnswer: "C"));
//3
    data.add(QuizData(
        questionText: "Kekurangan zat gizi apa yg bisa menyebabkan anemia?",
        v1: "A.Fe",
        v2: "B.Zink",
        v3: "C.Vitamin dan mineral",
        v4: "D.Fosrof",
        trueAnswer: "A"));
//4
    data.add(QuizData(
        questionText: "Selain minum TTD, apa upaya pencegahan anemia?",
        v1: "A.Makan makanan sumber vitamin c",
        v2: "B.Makan makanan sumber zat besi",
        v3: "C.Makan makanan yang digoreng",
        v4: "D.Makan makanan yang pedas",
        trueAnswer: "B"));
//5
    data.add(QuizData(
        questionText: "Berapa kali anjuran minum TTD untuk remaja putri?",
        v1: "A. 3 tahun sekali",
        v2: "B. 1 bulan sekali",
        v3: "C. 2 minggu sekali",
        v4: "D. 1 minggu sekali",
        trueAnswer: "D"));
// 6
    data.add(QuizData(
        questionText: "Cara mencegah anemia dengan?",
        v1: "A. Minum penambah nafsu makan",
        v2: "B. Minum tablet tambah darah",
        v3: "C. Minum obat cacing",
        v4: "D. Minum Vit A",
        trueAnswer: "B"));
// 7
    data.add(QuizData(
        questionText: "Kadar HB normal untuk Wanita adalah?",
        v1: "A. 12",
        v2: "B. 10",
        v3: "C. 9",
        v4: "D. 7",
        trueAnswer: "A"));

// 8
    data.add(QuizData(
        questionText: "Bagaimana cara mengetahui kadar HB?",
        v1: "A. Cek gula",
        v2: "B. Cek urin",
        v3: "C. Tensi",
        v4: "D. Cek darah",
        trueAnswer: "D"));

// 9
    data.add(QuizData(
        questionText: "Apakah sama gejala anemia dengan darah rendah?",
        v1: "A. Sama",
        v2: "B. Hampir Sama",
        v3: "C. Berbeda",
        v4: "D. Serupa",
        trueAnswer: "C"));

// 10
    data.add(QuizData(
        questionText: "Nama lain HB adalah?",
        v1: "A. Sel darah merah",
        v2: "B. Gula darah",
        v3: "C. Sel darah putih",
        v4: "D. Keping darah",
        trueAnswer: "C"));

    return data;
  }
}
