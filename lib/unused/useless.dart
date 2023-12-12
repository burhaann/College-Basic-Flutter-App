// Container(
// width: 150,
// height: 150,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(25),
// gradient: LinearGradient(
// begin: Alignment.bottomCenter,
// end: Alignment.topCenter,
// colors: [Colors.white, Colors.white.withAlpha(1)]
// ),
// ),
// ),

// Expanded(child: Container()),

// Expanded(
// child: OverflowBox(
// maxWidth: width,
// child: Container(
// decoration: BoxDecoration(
// color: Colors.blue,
// borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25),),
// ),
// child: ListView.builder(itemBuilder: (_, i) {
// return Column(
// children: [
// SizedBox(
// height: 50,
// ),
// Row(
// children: [
// SizedBox(
// width: 20,
// ),
// Container(
// alignment: Alignment.center,
// width: 80,
// height: 80,
// decoration: BoxDecoration(
// color: Colors.black.withOpacity(.6),
// borderRadius: BorderRadius.circular(100),
// ),
// ),
// SizedBox(
// width: 30,
// ),
// Container(
// alignment: Alignment.center,
// width: width - 160,
// height: 80,
// decoration: BoxDecoration(
// color: Colors.white.withOpacity(.25),
// borderRadius: BorderRadius.circular(25),
// ),
// child: Text(
// "$i : EMPTY",
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 35,
// fontWeight: FontWeight.bold,
// fontFamily: 'Quicksand',
// color: Colors.white,
// ),
// ),
// ),
// ],
// ),
// Container(
// alignment: Alignment.center,
// width: width - 30,
// height: 20,
// decoration: BoxDecoration(
// color: Colors.black.withOpacity(0),
// borderRadius: BorderRadius.circular(25),
// ),
// ),
// ],
// );
// }),
// ),
// ),
// ),

// Expanded(
// child: Center(
// child: SizedBox(
// height: 250, // card height
// child: PageView.builder(
// itemCount: 10,
// controller: PageController(viewportFraction: 0.85),
// onPageChanged: (int index) => setState(() => _index = index),
// itemBuilder: (_, i) {
// return Transform.scale(
// scale: i == _index ? 1 : .9,
// child: Card(
// elevation: 10,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(20)),
// child: Center(
// child: Text(
// "Card ${i + 1}",
// style: TextStyle(
// fontSize: 32,
// fontFamily: 'JetBrainsMono',
// ),
// ),
// ),
// ),
// );
// },
// ),
// ),
// ),
// ),

// LayoutBuilder(
// builder: (context, constraint) {
// return SingleChildScrollView(
// child: ConstrainedBox(
// constraints: BoxConstraints(
// minHeight: constraint.maxHeight,
// ),
// child: IntrinsicHeight(

// ListWheelScrollView(
// itemExtent: height,
// diameterRatio: .25,
// physics: FixedExtentScrollPhysics(),
// children: [
// Container(
// height: height / 3,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(25),
// gradient: LinearGradient(
// begin: Alignment.centerRight,
// end: Alignment.centerLeft,
// colors: [
// Colors.red,
// app.ColorPalette
//     .redBackground,
// ],
// ),
// ),
// ),
// Container(
// height: height / 3,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(25),
// gradient: LinearGradient(
// begin: Alignment.centerRight,
// end: Alignment.centerLeft,
// colors: [
// Colors.deepOrange,
// Colors.yellowAccent,
// ],
// ),
// ),
// ),
// Container(
// height: height / 3,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(25),
// gradient: LinearGradient(
// begin: Alignment.centerRight,
// end: Alignment.centerLeft,
// colors: [
// Colors.redAccent,
// Colors.pinkAccent,
// ],
// ),
// ),
// ),
// ],
// ),

// Container(
// height: (response / 5) * adapt,
// decoration: BoxDecoration(
// color: Colors.grey,
// ),
// child: Center(
// child: Text(
// '\\(o_o)/',
// textAlign: TextAlign.center,
// style: TextStyle(
// wordSpacing: 4,
// letterSpacing: 4,
// fontSize: 64 * adapt_double,
// fontWeight: FontWeight.w900,
// fontFamily: 'SmoochSans',
// color: Colors.white,
// ),
// ),
// ),
// ),

// Container(
// height: 200 * adapt_double,
// width: width,
// padding: EdgeInsets.only(
// right: paddin_double,
// left: paddin_double),
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(.5),
// ),
// child: Row(
// children: [
// Container(
// width:
// width / 2 - paddin_double,
// color:
// Colors.red.withOpacity(.5),
// child: Row(
// children: [
// Expanded(
// child: Container(
// color: Colors.black
//     .withOpacity(.5),
// child: Column(
// children: [
// Expanded(
// child: Container(
// color: Colors
//     .white
//     .withOpacity(
// .5),
// child: MyButton(
// icon: Icons
//     .emoji_events,
// ),
// ),
// ),
// Expanded(
// child: Container(
// color: Colors
//     .blue
//     .withOpacity(
// .5),
// ),
// ),
// ],
// ),
// ),
// ),
// Expanded(
// child: Container(
// color: Colors.black
//     .withOpacity(.5),
// child: Column(
// children: [
// Expanded(
// child: Container(
// color: Colors
//     .blue
//     .withOpacity(
// .5),
// ),
// ),
// Expanded(
// child: Container(
// color: Colors
//     .white
//     .withOpacity(
// .5),
// ),
// ),
// ],
// ),
// ),
// ),
// ],
// ),
// ),
// Container(
// width:
// width / 2 - paddin_double,
// decoration: BoxDecoration(
// color: Colors.grey
//     .withOpacity(.85),
// borderRadius:
// BorderRadius.circular(30),
// ),
// child: Row(
// children: [
// Expanded(
// child: Container(
// child: Column(
// children: [
// Expanded(
// child: Container(
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.only(
// topLeft:
// Radius.circular(30)),
// color: Colors
//     .red
//     .withOpacity(
// .5),
// ),
// ),
// ),
// Expanded(
// child: Container(
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.only(
// bottomLeft:
// Radius.circular(30)),
// color: Colors
//     .blue
//     .withOpacity(
// .5),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// Expanded(
// child: Container(
// child: Column(
// children: [
// Expanded(
// child: Container(
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.only(
// topRight:
// Radius.circular(30)),
// color: Colors
//     .blue
//     .withOpacity(
// .5),
// ),
// ),
// ),
// Expanded(
// child: Container(
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.only(
// bottomRight:
// Radius.circular(30)),
// color: Colors
//     .red
//     .withOpacity(
// .5),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// Container(
// height: 200 * adapt_double,
// width: width,
// padding: EdgeInsets.only(
// right: paddin_double,
// left: paddin_double),
// decoration: BoxDecoration(
// color: Colors.grey.withOpacity(.5),
// ),
// child: Row(
// children: [
// Container(
// width:
// width / 2 - paddin_double,
// decoration: BoxDecoration(
// color: Colors.grey
//     .withOpacity(.85),
// borderRadius:
// BorderRadius.circular(30),
// ),
// child: Row(
// children: [
// Expanded(
// child: Container(
// child: Column(
// children: [
// Expanded(
// child: Container(
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.only(
// topLeft:
// Radius.circular(30)),
// color: Colors
//     .red
//     .withOpacity(
// .5),
// ),
// ),
// ),
// Expanded(
// child: Container(
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.only(
// bottomLeft:
// Radius.circular(30)),
// color: Colors
//     .blue
//     .withOpacity(
// .5),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// Expanded(
// child: Container(
// child: Column(
// children: [
// Expanded(
// child: Container(
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.only(
// topRight:
// Radius.circular(30)),
// color: Colors
//     .blue
//     .withOpacity(
// .5),
// ),
// ),
// ),
// Expanded(
// child: Container(
// decoration:
// BoxDecoration(
// borderRadius:
// BorderRadius.only(
// bottomRight:
// Radius.circular(30)),
// color: Colors
//     .red
//     .withOpacity(
// .5),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
// ],
// ),
// ),
// Container(
// width:
// width / 2 - paddin_double,
// color:
// Colors.red.withOpacity(.5),
// child: Row(
// children: [
// Expanded(
// child: Container(
// color: Colors.black
//     .withOpacity(.5),
// child: Column(
// children: [
// Expanded(
// child: Container(
// color: Colors
//     .white
//     .withOpacity(
// .5),
// ),
// ),
// Expanded(
// child: Container(
// color: Colors
//     .blue
//     .withOpacity(
// .5),
// ),
// ),
// ],
// ),
// ),
// ),
// Expanded(
// child: Container(
// color: Colors.black
//     .withOpacity(.5),
// child: Column(
// children: [
// Expanded(
// child: Container(
// color: Colors
//     .blue
//     .withOpacity(
// .5),
// ),
// ),
// Expanded(
// child: Container(
// color: Colors
//     .white
//     .withOpacity(
// .5),
// ),
// ),
// ],
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
