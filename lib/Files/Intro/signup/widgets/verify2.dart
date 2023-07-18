

import 'dart:ui';

import '../../../Constants/const_imports.dart';
import '../../../Constants/src/colors.dart';

class Verify2 extends StatelessWidget {
  const Verify2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: DiceColors.dice5),
      child: Center(
        child: Text(
          'Await OTP',
          style: GoogleFonts.actor(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Colors.white),
        ),
      ),
    );
  }
}
class Verify4 extends StatelessWidget {
  const Verify4({
    super.key,this.onTap
  });
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Verify2(),
    );
  }
}