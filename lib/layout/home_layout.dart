import 'package:bearking_bad/layout/cubit/cubit.dart';
import 'package:bearking_bad/shared/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: ()
            {

            },
          ),
        ],
        title: Text("Characters"),
      ),
      body: OfflineBuilder(
        connectivityBuilder: (
            BuildContext context,
            ConnectivityResult connectivity,
            Widget child
            ){
          final bool connected = connectivity != ConnectivityResult.none;
          if(connected)
            {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2/3,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: AppCubit.get(context).charcter.length,
                  itemBuilder: (context, index){
                    return buildCharacterItem(AppCubit.get(context).charcter[index], context);
                  },
                ),
              );
            }
          else {
            return buildNoInternetWidget();
          }
        },
        child: showLoadingIndicator(),
      ),
    );
  }
}
