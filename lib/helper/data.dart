import '../model/category_model.dart';

List<CategoryModel> getCategories() {
  var category = <CategoryModel>[];

  CategoryModel categoryModel = CategoryModel();
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";
  categoryModel.categoryName = "Business";
  category.add(categoryModel);
  
  CategoryModel categoryModel1 = CategoryModel();
  categoryModel1.imageUrl =
      "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  categoryModel1.categoryName = "General";
  category.add(categoryModel1);

  CategoryModel categoryModel2 = CategoryModel();
  categoryModel2.imageUrl ="https://images.unsplash.com/photo-1526256262350-7da7584cf5eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  categoryModel2.categoryName = "Health";
  category.add(categoryModel2);

  CategoryModel categoryModel3 = CategoryModel();
  categoryModel3.imageUrl =
      "https://images.unsplash.com/photo-1518152006812-edab29b069ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  categoryModel3.categoryName = "Science";
  category.add(categoryModel3);

  CategoryModel categoryModel4 = CategoryModel();
  categoryModel4.imageUrl =
      "https://images.unsplash.com/photo-1547347298-4074fc3086f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  categoryModel4.categoryName = "Sports";
  category.add(categoryModel4);

  CategoryModel categoryModel5 = CategoryModel();
  categoryModel5.imageUrl =
      "https://images.unsplash.com/photo-1603732551658-5fabbafa84eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  categoryModel5.categoryName = "Technology";
  category.add(categoryModel5);

  return category;
}
