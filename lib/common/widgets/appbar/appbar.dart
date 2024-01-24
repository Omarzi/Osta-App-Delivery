
import '../../../utils/constants/exports.dart';

class OAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.centerTitle = false,
     this.leadingWidget,
    this.actions,
    // this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final bool centerTitle;
  // final IconData? leadingIcon;
  final List<Widget>? actions;
  // final VoidCallback? leadingOnPressed;
  final Widget? leadingWidget;

  @override
  Widget build(BuildContext context) {
    bool isEnglish = BlocProvider.of<LanguageCubit>(context).isEnglish;

    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: AppBar(
          flexibleSpace: Container(
            decoration: showBackArrow ? BoxDecoration() : const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2ED3C1), Color(0xFF33B4E5)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: () => context.pop(), icon: Icon(isEnglish ? Iconsax.arrow_left : Iconsax.arrow_right_1))
            :  leadingWidget,
        title: title,
        centerTitle: centerTitle,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ODeviceUtils.getAppBarHeight());
}
