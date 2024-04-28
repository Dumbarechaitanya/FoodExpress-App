Add images folder in your assets folder  by creating assets folder outside Lib folder in your app.


And add rest of the folder in your Lib folder


Also run following commandsin lib integrated terminal:/n

  
  flutter pub get
  flutter pub add collection      
  flutter pub add provider   
  flutter pub add flutter_credit_card
  npm install -g firebase-tools      
  npm install -g npm@10.5.2     
  flutterfire configure 
  flutter pub global activate flutterfire_cli
  firebase login
  flutter pub add firebase_core
  flutter pub add firebase_auth
  flutter pub add cloud_firestore


After running above commands check in your pubspec.yaml file if following is being displayed :/n

  
  cupertino_icons: ^1.0.6
  get: ^4.6.6
  provider: ^6.1.2
  collection: ^1.18.0
  flutter_credit_card: ^4.0.1
  intl: ^0.19.0
  firebase_core: ^2.29.0
  firebase_auth: ^4.19.1
  cloud_firestore: ^4.16.1
