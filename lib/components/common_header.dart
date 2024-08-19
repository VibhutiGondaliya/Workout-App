import 'package:ft_task/package/config_packages.dart';
import 'package:ft_task/package/screen_packages.dart';

class CommonHeader extends StatelessWidget {
  const CommonHeader({super.key, this.title, this.isHasNextIcon = false, this.onTap, this.edgeInsetsGeometry});

  final String? title;
  final bool? isHasNextIcon;
  final EdgeInsetsGeometry? edgeInsetsGeometry;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: edgeInsetsGeometry ?? const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.grey80Color.withOpacity(0.1),
              AppColor.white.withOpacity(0.1),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title ?? "",
                softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle().normal15w500.textColor(Theme.of(context).colorScheme.onSecondary),
              ),
            ),
            if (isHasNextIcon ?? false)
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(shape: BoxShape.circle, color: AppColor.grey50Color),
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 12,
                  color: AppColor.black,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
