import 'package:osta_app_delivery/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

import '../../../../utils/constants/exports.dart';

class OCurvedEdgeWidget extends StatelessWidget {
  const OCurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OCustomCurvedEdges(),
      child: child,
    );
  }
}
