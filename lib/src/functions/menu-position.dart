part of modern_form_popupmenu;

RelativeRect modernFormPopupMenuPosition(
    BuildContext context, ModernFormPopupMenuLocation menuLocation) {
  final RenderBox bar = context.findRenderObject();
  final RenderBox overlay = Overlay.of(context).context.findRenderObject();
  switch (menuLocation) {
    case ModernFormPopupMenuLocation.BottomLeft:
      return RelativeRect.fromRect(
          Rect.fromPoints(
            bar.localToGlobal(bar.size.bottomLeft(Offset.zero),
                ancestor: overlay),
            bar.localToGlobal(bar.size.bottomLeft(Offset.zero),
                ancestor: overlay),
          ),
          Offset.zero & overlay.size);
      break;
    case ModernFormPopupMenuLocation.BottomRight:
      return RelativeRect.fromRect(
          Rect.fromPoints(
            bar.localToGlobal(bar.size.bottomRight(Offset.zero),
                ancestor: overlay),
            bar.localToGlobal(bar.size.bottomRight(Offset.zero),
                ancestor: overlay),
          ),
          Offset.zero & overlay.size);
      break;
    case ModernFormPopupMenuLocation.TopLeft:
      return RelativeRect.fromRect(
          Rect.fromPoints(
            bar.localToGlobal(bar.size.topLeft(Offset.zero), ancestor: overlay),
            bar.localToGlobal(bar.size.topLeft(Offset.zero), ancestor: overlay),
          ),
          Offset.zero & overlay.size);
      break;
    case ModernFormPopupMenuLocation.TopRight:
      return RelativeRect.fromRect(
          Rect.fromPoints(
            bar.localToGlobal(bar.size.topRight(Offset.zero),
                ancestor: overlay),
            bar.localToGlobal(bar.size.topRight(Offset.zero),
                ancestor: overlay),
          ),
          Offset.zero & overlay.size);
      break;
    default:
      return RelativeRect.fromRect(
          Rect.fromPoints(
            bar.localToGlobal(bar.size.bottomLeft(Offset.zero),
                ancestor: overlay),
            bar.localToGlobal(bar.size.bottomLeft(Offset.zero),
                ancestor: overlay),
          ),
          Offset.zero & overlay.size);
      break;
  }
}
