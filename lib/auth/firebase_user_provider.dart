import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class JuventusWorldFirebaseUser {
  JuventusWorldFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

JuventusWorldFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<JuventusWorldFirebaseUser> juventusWorldFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<JuventusWorldFirebaseUser>(
      (user) {
        currentUser = JuventusWorldFirebaseUser(user);
        return currentUser!;
      },
    );
