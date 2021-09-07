/// This file handles glitches or errors
class Glitch {
  var message;
  Glitch({this.message});

  // override the toString method to print Glitch message directly.
  @override
  String toString() => 'Glitch(message: $message)';

  // override the hashcode on for equality and identical test
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Glitch && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class NoInternetGlitch extends Glitch {
  NoInternetGlitch() : super(message: "Unable to connect to the internet");
}
