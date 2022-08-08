import 'package:badges/badges.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopper/gen/assets.gen.dart';
import 'package:flutter_shopper/utils/colors.dart';
import 'package:flutter_shopper/utils/others.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final double appBarHeight = 66.0;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
        body: Scaffold(
            body: CustomScrollView(
      slivers: <Widget>[
        const SliverPadding(padding: EdgeInsets.symmetric(vertical: 5)),
        SliverAppBar(
          backgroundColor: kAppColor,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              10.width,
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(2), // Border width
                decoration: BoxDecoration(
                    color: kAppGreen, borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(20), // Image radius
                    child: Assets.images.person.image(),
                  ),
                ),
              ),
            ],
          ),
          title: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Carla Korsgaard                ',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '4195  Hidden Valley Road',
                style: TextStyle(
                    color: kGray, fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          actions: [
            SizedBox(
              height: 40,
              width: 40,
              child: Badge(
                badgeColor: kPrimaryRed,
                position: BadgePosition.topEnd(top: 6, end: 3),
                badgeContent: Text(''),
                child: InkWell(
                  onTap: () {
                    // context.pushRoute(CartRouter(children: [CartRoute()]));
                  },
                  child: Icon(
                    PhosphorIcons.envelopeSimpleLight,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(
                height: 50,
                width: 50,
                child: Icon(
                  PhosphorIcons.shoppingBagOpenLight,
                  color: Colors.white,
                  size: 30,
                )),
          ],
          floating: true,
          pinned: true,
          snap: false,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          expandedHeight: context.width() / 1.5,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                color: kAppColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              padding: EdgeInsets.only(top: statusBarHeight),
              height: statusBarHeight + appBarHeight,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: context.width(),
                      height: statusBarHeight + appBarHeight,
                      child: SvgPicture.asset(
                        "assets/images/background.svg",
                      ),
                    ),
                    DotsIndicator(
                      dotsCount: 4,
                      position: 2,
                      decorator: DotsDecorator(
                        activeColor: Colors.white,
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        /*   SliverToBoxAdapter(
            child: Container(
              width: width / 2,
              height: height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150.0,
                    child: CategoryWidget(post: listCategories[index])
                        .paddingAll(5),
                  );
                },
              ),
            ),
          ), */
        SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              Container(color: Colors.white, height: 400),
              Container(color: Colors.red, height: 800),
            ],
          ),
        ),
      ],
    )));
    /* Scaffold(
            body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              /*  SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                width: context.width(),
                child: Expanded(
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(2), // Border width
                      decoration: BoxDecoration(
                          color: kAppGreen,
                          borderRadius: BorderRadius.circular(15)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(48), // Image radius
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Assets.images.person.image(),
                          ),
                        ),
                      ),
                    ),
                    title: const Text(
                      'Carla Korsgaard',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text(
                      '4195  Hidden Valley Road',
                      style: TextStyle(
                          color: kGray,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: SizedBox(
                      height: 40,
                      width: 100,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          20.width,
                          const SizedBox(
                              height: 40,
                              width: 40,
                              child: Icon(PhosphorIcons.envelopeSimpleLight,
                                  color: Colors.white)),
                          Badge(
                            badgeColor: kPrimaryRed,
                            position: BadgePosition.topEnd(top: -8, end: -2),
                            badgeContent: Text(''),
                            child: InkWell(
                              onTap: () {
                                // context.pushRoute(CartRouter(children: [CartRoute()]));
                              },
                              child: Icon(
                                PhosphorIcons.shoppingBagOpenLight,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                          ),
                          /*  const SizedBox(
                                height: 40,
                                width: 40,
                                child: Icon(
                                    PhosphorIcons.shoppingBagOpenLight,
                                    color: Colors.white),
                              ), */
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          */
              SliverAppBar(
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    // print('constraints=' + constraints.toString());
                    //top = constraints.biggest.height;
                    return FlexibleSpaceBar(
                        centerTitle: true,
                        title:const AnimatedOpacity(
                            duration: Duration(milliseconds: 300),
                            //opacity: top == MediaQuery.of(context).padding.top + kToolbarHeight ? 1.0 : 0.0,
                            opacity: 1.0,
                            child: Text(
                              'john',
                              //top.toString(),
                              style:  TextStyle(fontSize: 12.0),
                            )),
                        /* background: Image.network(
                          "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
                          fit: BoxFit.cover,
                        ) */);
                  })),
            ];
          },
          body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Text("List Item: " + index.toString());
            },
          ),
        )));
  */
  }

  /* CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            collapsedHeight: 100,
            expandedHeight: context.width() / 1.5,
            backgroundColor: kAppColor,
            centerTitle: false,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  35.height,
                  SizedBox(
                    width: context.width(),
                    child: Expanded(
                      child: ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(2), // Border width
                          decoration: BoxDecoration(
                              color: kAppGreen,
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48), // Image radius
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: Assets.images.person.image(),
                              ),
                            ),
                          ),
                        ),
                        title: const Text(
                          'Carla Korsgaard',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: const Text(
                          '4195  Hidden Valley Road',
                          style: TextStyle(
                              color: kGray,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: SizedBox(
                          height: 40,
                          width: 100,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              20.width,
                              const SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Icon(
                                      PhosphorIcons.envelopeSimpleLight,
                                      color: Colors.white)),
                              Badge(
                                badgeColor: kPrimaryRed,
                                position:
                                    BadgePosition.topEnd(top: -8, end: -2),
                                badgeContent: Text(''),
                                child: InkWell(
                                  onTap: () {
                                    // context.pushRoute(CartRouter(children: [CartRoute()]));
                                  },
                                  child: Icon(
                                    PhosphorIcons.shoppingBagOpenLight,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                              ),
                              /*  const SizedBox(
                                height: 40,
                                width: 40,
                                child: Icon(
                                    PhosphorIcons.shoppingBagOpenLight,
                                    color: Colors.white),
                              ), */
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  10.height,
                  Column(
                    children: [
                      SizedBox(
                        width: context.width(),
                        height: context.width() / 2,
                        child: SvgPicture.asset(
                          "assets/images/display.svg",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            shape: kSilvershape,

            /* const Text(
              'Pharmacy',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ), */
            /*   actions: [
              /*  
              Badge(
                badgeColor: Colors.yellow,
                position: BadgePosition.topEnd(top: 4, end: -2),
                badgeContent: Text(''),
                child: InkWell(
                  onTap: () {
                    context.pushRoute(CartRouter(children: [CartRoute()]));
                  },
                  child: Icon(
                    FontAwesomeIcons.truckFast,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ), */
              15.width,
            ], */

            /*  bottom: AppBar(
              backgroundColor: kAppColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              /* title: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 3),
                  ],
                ),
                child: Container(),
              ), */
            ),
          */
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(color: Colors.yellow, height: 400),
              Container(color: Colors.red, height: 800),
            ]),
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 5)),
          /*    SliverList(
            delegate: SliverChildListDelegate([
              Container(
                  height: 20,
                  child: Row(
                    children: [
                      const Icon(
                        PhosphorIcons.mapPin,
                        color: Colors.black,
                        size: 22,
                      ),
                      5.width,
                      RichText(
                        text: const TextSpan(
                          // Note: Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Delivery in ',
                                style: TextStyle(color: Colors.amber)),
                            TextSpan(
                                text: 'Lagos, NG',
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ],
                  )),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'CATEGORIES',
                    style: TextStyle(
                        color: kAppColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                    onTap: () {
                      // context.replaceRoute(CategoryRoute());
                      /*  context.pushRoute(
                            CategoryRouter(children: [CategoryRoute()])); */
                    },
                    child: const Text(
                      'VIEW ALL',
                      style: TextStyle(
                          color: kAppGreen,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ).paddingAll(15),
            ]),
          ), */
          /*  SliverToBoxAdapter(
            child: Container(
              width: width / 2,
              height: height / 4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150.0,
                    child: CategoryWidget(post: listCategories[index])
                        .paddingAll(5),
                  );
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'SUGGESTIONS',
                    style: TextStyle(
                        color: kUnselectedTabColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ).paddingAll(15),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                children: [
                  ...listDrugList
                      .map((e) => InkWell(
                          onTap: () => context.pushRoute(DetailRouter(
                              children: [DetailRoute(model: e)])),
                          child: DrugWidget(
                              post: e, isSearching: isSearching)))
                      .toList(),
                ],
              )
            ]),
          ),
         */
          /*  if (textSearching.value.trim().isNotEmpty && newList.isNotEmpty)
            SliverList(
              delegate: SliverChildListDelegate([
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  children: [
                    ...newList
                        .map((e) => InkWell(
                            onTap: () => context.pushRoute(DetailRouter(
                                children: [DetailRoute(model: e)])),
                            child: DrugWidget(
                                post: e, isSearching: isSearching)))
                        .toList(),
                  ],
                )
              ]),
            ), */
          /*  if (textSearching.value.trim().isNotEmpty && newList.isEmpty)
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      width: 200,
                      height: 200,
                      image: AssetImage('assets/images/error.png'),
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'No result found for ${textSearching.value}',
                      style: TextStyle(
                          color: kUnselectedTabColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ).paddingAll(15),
              ]),
            ), */
          /*  if (textSearching.value.trim().isEmpty)
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverToBoxAdapter(
                child: Container(
                  width: width / 2,
                  height: height / 5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listCategories.length,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                ),
              ),
            ),
        ],
      ), */
          /*  Positioned(
        bottom: 5,
        right: 0,
        child: MaterialButton(
          onPressed: () => {
            context.pushRoute(CartRouter(children: [CartRoute()]))
          },

          /* Badge(
      badgeContent: Text('3'),
      child: Icon(Icons.settings),
    ) */
          child: textSearching.value.trim().isEmpty
              ? Container(
                  decoration: kDownGradientColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Checkout',
                          style: TextStyle(color: white),
                        ),
                        5.width,
                        const Icon(
                          FontAwesomeIcons.cartShopping,
                          color: white,
                          size: 22,
                        ),
                        5.width,
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                          child: Text('$intTotal'),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  decoration: kDownGradientColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Badge(
                      position: BadgePosition.topEnd(top: -12, end: -20),
                      badgeColor: Colors.yellow,
                      badgeContent: Text(
                        '$intTotal',
                        style: const TextStyle(color: Colors.black),
                      ),
                      child: Icon(
                        color: Colors.white,
                        size: 22,
                        FontAwesomeIcons.cartShopping,
                      ),
                    ),
                  ),
                ),
        ),
      ),
         */
        ],
      ),
     */
}
