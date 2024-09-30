# E-commerce Flutter Application

## Overview

This is a mobile e-commerce application built using Flutter. It showcases products by categories and includes essential features like product details, a shopping cart, user profile, and a favorites list.


<img src="https://github.com/tliliAbdelmonem/Store-Shop/blob/main/assets/preview/preview-app.jpg" />

## Features

1. **Home Page**:
   - Search bar for quick product searches.
   - Promotional banner.
   - List of products categorized by gender and age.

2. **Product Details Page**:
   - Displays detailed information about each product.
   - Option to add products to the favorites list.

3. **Shopping Cart**:
   - Summarizes selected products with price and quantity.
   - Provides a payment summary.

4. **Profile Page**:
   - Allows users to view and edit their personal information.

5. **Favorites Page**:
   - Displays a list of user-favorite products.

## Dependencies

The following Flutter packages are used in this project:

- **[flutter_rating](https://pub.dev/packages/flutter_rating):** ^2.0.2  
  Used to display ratings for the products.
  
- **[flutter_svg](https://pub.dev/packages/flutter_svg):** ^2.0.10+1  
  Supports rendering SVG images.

- **[go_router](https://pub.dev/packages/go_router):** ^14.2.8  
  For navigation between different pages of the app.

- **[google_fonts](https://pub.dev/packages/google_fonts):** ^6.2.1  
  Applies Google Fonts to the app for a customized appearance.

- **[hexcolor](https://pub.dev/packages/hexcolor):** ^3.0.1  
  Supports color codes in hexadecimal format.

- **[image_picker](https://pub.dev/packages/image_picker):** ^1.1.2  
  For image selection from the device gallery or camera.

- **[provider](https://pub.dev/packages/provider):** ^6.1.2  
  State management for the application.

- **[shared_preferences](https://pub.dev/packages/shared_preferences):** ^2.3.2  
  Used to store user data locally, such as saved favorites.

## Installation

1. Clone the repository:

```
git clone https://github.com/tliliAbdelmonem/Store-Shop.git
cd Store-Shop

```

2. Install dependencies:

```
flutter pub get

```
3. Run the application:

```
flutter run
