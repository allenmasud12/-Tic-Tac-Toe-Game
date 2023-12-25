import 'package:flutter/material.dart';

import 'enum/box_state.dart';

class BoxStateToIcon extends StatelessWidget {
  final boxState;
  const BoxStateToIcon({Key? key, this.boxState }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return boxState == BoxState.cross? const Icon(
        Icons.close,
        size: 120,color:
    Colors.white
    ) : boxState == BoxState.circle? const Icon(
        Icons.lens_outlined,
        size: 100,
        color: Colors.white
    ): Container();
  }
}
