import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Bagian Header
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("logo.png", height: 75, width: 75,),

                  //container nya promo
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.local_offer, color: Colors.white),
                        SizedBox(width: 5),
                        Text("Promo", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  
                ],
              ),
            ),
//=============================================================================
            // container saldo
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg ovo2.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),

                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("OVO Cash", style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Text("Total Saldo  ", style: TextStyle(color: Colors.white)),
                        Icon(Icons.remove_red_eye, color: Colors.white, size: 15),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rp. 271.000.000.000",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              Icon(Icons.card_giftcard,
                                  color: Colors.white, size: 16),
                              SizedBox(width: 4),
                              Text(
                                "50.000 points",
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                   

                    // menu Topup, Transfer, Tarik Tunai, Histori
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MenuIcon(title: "Topup", icon: Icons.add),
                        MenuIcon(title: "Transfer", icon: Icons.send),
                        MenuIcon(title: "Tarik Tunai", icon: Icons.money),
                        MenuIcon(title: "Histori", icon: Icons.history),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ),




//===================================================================================





           // (PLN, Pulsa, dll)
Expanded(
  child: Container(
    padding: EdgeInsets.symmetric(vertical: 15),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    ),
    child: SingleChildScrollView( // buat scrolll
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: const [
              ExtraMenuIcon(title: "PLN", icon: Icons.flash_on),
              ExtraMenuIcon(title: "Pulsa", icon: Icons.phone_android),
              ExtraMenuIcon(title: "Peduli Lindungi", icon: Icons.favorite),
              ExtraMenuIcon(title: "Invest", icon: Icons.show_chart),
              ExtraMenuIcon(title: "Angsuran Kredit", icon: Icons.credit_card),
              ExtraMenuIcon(title: "Internet & TV", icon: Icons.tv),
              ExtraMenuIcon(title: "Proteksi", icon: Icons.shield),
              ExtraMenuIcon(title: "Lainnya", icon: Icons.more_horiz),
              
            ],
          ),

          SizedBox(height: 20),

          
        Container(
  margin: EdgeInsets.all(10), // kasih jarak biar bayangan keliatan
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12), 
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2), 
        spreadRadius: 2, 
        blurRadius: 8,   
        offset: Offset(0, 4), 
      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Image.asset(
      'promo.jpg',
      width: MediaQuery.of(context).size.width * 0.9,
      fit: BoxFit.cover,
    ),
  ),
),
        ],
      ),
    ),
  ),
),


          ],
        ),
      ),
    );
  }
}


class MenuIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuIcon({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(title, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class ExtraMenuIcon extends StatelessWidget {
  final String title;
  final IconData icon;

  const ExtraMenuIcon({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.purple.shade50,
          child: Icon(icon, color: Colors.purple),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
