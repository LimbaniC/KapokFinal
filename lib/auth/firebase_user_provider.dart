import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GithubKapokFirebaseUser {
  GithubKapokFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GithubKapokFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GithubKapokFirebaseUser> githubKapokFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GithubKapokFirebaseUser>(
      (user) {
        currentUser = GithubKapokFirebaseUser(user);
        return currentUser!;
      },
    );
