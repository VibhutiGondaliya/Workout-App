import 'package:ft_task/package/config_packages.dart';
import 'package:ft_task/package/screen_packages.dart';

class CommonFilter extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final Function(String) onCategorySelected;

  CommonFilter({
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      height: 60,
      child: Center(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 5,
            );
          },
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            final isSelected = category == selectedCategory;
            return GestureDetector(
              onTap: () {
                if (!isSelected) {
                  onCategorySelected(category);
                }
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.tabBarGreyColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  color: isSelected ? AppColor.grey80Color : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    category.toUpperCase(),
                    style: TextStyle().normal15w500.textColor(
                          isSelected ? AppColor.white : Theme.of(context).tabBarTheme.unselectedLabelColor!,
                        ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
