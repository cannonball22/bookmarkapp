import 'package:bookmarkapp/Presentation/UI/Components/action_button.dart';
import 'package:bookmarkapp/Presentation/UI/Components/chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingWidget extends StatefulWidget {


  const OnBoardingWidget({super.key});

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
    late int _pageIndex;

    @override
    void initState() {
      super.initState();
      //,
      //SECTION - State Variables initializations & Listeners",
      //t2 --Controllers & Listeners",
      _pageIndex = 0;
      //t2 --Controllers & Listeners",
      //,
      //t2 --State,
      //t2 --State,
      //,
      //t2 --Late & Async Initializers,
      //t2 --Late & Async Initializers,
      //!SECTION",
    }
  @override
  Widget build(BuildContext context) {
    List<String> _assetName=[
      "assets/images/OB-1.png","assets/images/OB-1.png","assets/images/OB-1.png"
    ];
    List<String> _onBoardingHeadings=[
      "Search for it","Start Reading","Stay Organized"
    ];
    List<String> _onBoardingText=[
      "It’s never been easier to search for your favourite book. You can search using a book’s title, author, or ISBN number. You can scan it too!",
      "Track your reading progress with customizable reading session. And when you’re done, just leave a bookmark ;)",
      "Keep all your quotes in one place! No more fiddling around to keep track of all the quotes you have kept!"
    ];
     _incrementPageIndex() {
      setState(() {
        _pageIndex++;
      });
    }
    return  Scaffold(
      floatingActionButton: _pageIndex!=2?  TextButton(
        onPressed: _incrementPageIndex,
        child: const Text(
          "Next",
        style: TextStyle(
        color: Color(0xff59C7BA),
        fontFamily: "Noto Sans",
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),),) :ActionButton(text: "Get Started", fun: (){}),

      floatingActionButtonLocation:_pageIndex==2 ? FloatingActionButtonLocation.centerDocked:FloatingActionButtonLocation.endFloat ,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.only(top:26),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity,
                child: Image.asset(_assetName[_pageIndex],
                ),
              ),
              const SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Column(
                  children: [
                     OnBoardingChip(pageIndex: _pageIndex),
                    const SizedBox(height: 16,),
                     SizedBox(
                      width: double.infinity,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _onBoardingHeadings[_pageIndex],
                            style: const TextStyle(
                              color: Color(0xff59C7BA),
                              fontFamily: "Exo",
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                          Text(
                            _onBoardingText[_pageIndex],
                            style: const TextStyle(
                              color: Color(0xff747474),
                              fontFamily: "Noto Sans",
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      )
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
