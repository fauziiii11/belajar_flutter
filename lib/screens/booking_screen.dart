import 'package:belajar_flutter/helpers/size_helper.dart';
import 'package:belajar_flutter/screens/output_booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskripsikan variabel input
TextEditingController namaController = TextEditingController();
TextEditingController tiketController = TextEditingController();
TextEditingController qtyController = TextEditingController();
TextEditingController tglController = TextEditingController();
String _pilihFauna = "";



final List<String> fauna = [
"Makanan dan minumna",
"Tagihan listrik",
"Tagihan rumah",
"Kredit motor",
"Bayar rumah", 
];



  
  

  

void initState() {
  tglController.text = '';
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pengeluaran'),
        backgroundColor: Color.fromARGB(255, 1, 192, 1),
      ),
    body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("pengeluaran"),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Nama lengkap",
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'input nama';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18,),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                            hintText: "kategori pengeluaran",
                            labelText: "Pilih Kategori Pengeluaran",
                            border: OutlineInputBorder()
                          ),
                          items: fauna.map((String items) {
                            int index = 0;
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            
                          },
                        ),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: qtyController,
                          decoration: InputDecoration(
                            hintText: "nominal pengeluaran",
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input qty ';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: tglController,
                          decoration: InputDecoration(
                            hintText: "Tanggal",
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input tanggal ';
                            }
                            return null;
                          },
                          onTap: () async{
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              String tgl =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                              setState(() {
                                tglController.text = tgl;
                              });
                            } else {
                              print("tanggal tidak dipilih");
                            }
                          },
                        ),
                        
                        SizedBox(height: 18,),
                        SizedBox(
                          width: displayWidth(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.circular(10),
                                  side: BorderSide(color: Colors.white60),
                                ),
                              ),
                            ),
                            child: Text("simpan"),
                            onPressed: () {
                              _submit();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
  void _submit() {
 final isValid = _formKey.currentState!.validate();
 if (!isValid) {
  return;
 } else {
  _formKey.currentState!.save();
  String nama = namaController.text;
  String qty = qtyController.text;
  String fauna= _pilihFauna;
  String tgl = tglController.text;

    

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => OutputBookingScreen(
        nama: nama, qty: qty, tgl: tgl, fauna: _pilihFauna,
            
            ),
    ),
  );
 }
  }
}