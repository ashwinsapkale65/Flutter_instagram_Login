  import 'package:flutter/material.dart';




Widget MainScreen(BuildContext context,double width)
{
  return Container(
          width: MediaQuery.of(context).size.width*width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 
              Flexible(child: Container(), flex: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: middlesection(context),
              ),
              Flexible(child: Container(), flex: 2),
              const Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: bottombar(),
              ),
            ],
          ),
        )
     ;
}


Widget middlesection(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "asset/images/instagram_icon.png",
          height: 64,
        ),
        const SizedBox(height: 24),
        inputs(hintext: "Phone Number,Username or Email Address", ob: false,context: context),
       const SizedBox(height: 24),
       inputs(hintext: "Password", ob: true,context: context),
      const SizedBox(height: 24),
        SizedBox(
          height: 48,
          width: double.infinity,
          
          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,

              
            ),
            
            onPressed: () {},
            child: const Text("Log in",style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Forgot your login details?"),
            Text(" Get help logging in",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: const [
            Flexible(child: Divider(thickness: 2)),
            Text(" OR "),
            Flexible(child: Divider(thickness: 2)),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/images/fb_icon.png", height: 32),
             Text(" Log in with Facebook"),
          ],
        )
      ],
    );
  }

  Widget bottombar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Don't have an account"),
        Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }



  Widget inputs({required String hintext,required bool ob,BuildContext? context})
  {
    return  SizedBox(
     
      child: TextField(
        
            
            decoration: InputDecoration(
              hintText: hintext,
      
              focusedBorder: OutlineInputBorder(
                
                borderSide: Divider.createBorderSide(context,color: Colors.grey.shade400),
          
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context, color: Colors.grey.shade400),
                 borderRadius: BorderRadius.circular(7)
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(8),
              
            ),
            obscureText: ob,
          ),
    );
       
  }