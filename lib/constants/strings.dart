// ignore_for_file: constant_identifier_names

part of constants;

class AppStrings {
  // strings
  static const String APP_NAME = "Movie App";

  static const String CHANGE_THEME = 'Change Theme';
  static const String DARK_MODE = 'Dark Mode';
  static const String ACCENTS = 'Accents';

  static const String WELCOME = "Welcome";
  static const String FITNESS_GYM = "Fitness Gym";
  static const String WELCOME_BACK = "Welcome back,";
  static const String WELCOME_BACK_2 = "Welcome back!";
  static const String HELLO = "HELLO";
  static const String HELLO_2 = "Hello,";
  static const String GET_STARTED = "Let's Get Started!";
  static const String CREATE_ACCOUNT = "Create an account to get all features";
  static const String REGISTER = "Register";
  static const String BACK = "back";
  static const String BACK_2 = "Back";
  static const String BACK_3 = "Back!";

  static const String SIGN_IN_MSG = "Hey! Good to see you again.";
  static const String SIGN_UP_MSG = "We are happy to see you here!";

  static const String LOGIN_MSG =
      '''Enter your registered EMAIL id or contact number and PASSWORD to login into your acount.''';
  static const String LOGIN_MSG_2 = "Log into your existing account";

  static const String LOG_IN = "Login";
  static const String LOG_IN_EX = "Login to your account";
  static const String LOG_IN_3 = "LOGIN";
  static const String LOG_IN_4 = "Log In";
  static const String LOG_IN_5 = "Log In!";
  static const String LOG_OUT = "Logout";
  static const String SIGN_IN = "Sign in";
  static const String SIGN_IN_2 = "Signin";
  static const String SIGN_UP = "Sign up";
  static const String SIGN_UP_2 = "Sign Up";
  static const String SIGN_UP_3 = "Sign Up!";
  static const String SIGN_UP_4 = "Signup";
  static const String SIGN = "Sign";
  static const String UP = "up";
  static const String EASY_SIGN_UP = "It's easier to sign up now";

  // hint_text
  static const String FIRST_NAME = "First Name";
  static const String USER_NAME = "Username";
  static const String USER_NAME_2 = "USER NAME";
  static const String LAST_NAME = "Last Name";
  static const String NAME = "Name";
  static const String EMAIL_ADDRESS = "Email Address";
  static const String EMAIL = "Email";
  static const String EMAIL_2 = "EMAIL";
  static const String PASSWORD = "Password";
  static const String PASSWORD_2 = "PASSWORD";
  static const String CONFIRM_PASSWORD = "Confirm Password";

  static const String USERNAME_HINT_TEXT = "DavidLegend47";
  static const String PASSWORD_HINT_TEXT = "********";
  static const String EMAIL_HINT_TEXT = "example@gmail.com";

  static const String SEARCH = "Search";
  static const String SEARCH_HINT_TEXT = "Search here ..";
  static const String SEARCH_PRODUCT_NAME = "Product Search";
  static const String FILTER = "Filter";

  static const String UPLOAD_IMAGE = "Upload Image";
  static const String CAPTURE_OR_UPLOAD_IMAGE =
      "Take photo from Camera or upload image from Gallery";
  static const String CAPTURE_FROM_CAMERA = "Take Photo from Camera";
  static const String UPLOAD_FROM_GALLERY = "Upload Photo from Gallery";

  static const String SCAN_BARCODE = "Scan Barcode / SKU";
  static const String DESCRIPTION = "Description";
  static const String PARENT_CATEGORY = "Parent Category";
  static const String SUB_CATEGORY = "Sub Category";
  static const String OPENING_STOCK = "Opening Stock";
  static const String OPENING_STOCK_RATE = "Opening Stock RATE";
  static const String PURCHASE_COST = "Purchase Cost";
  static const String UNIT = "Unit";
  static const String UNIT_PER_CASE = "Unit Per Case";
  static const String SALES_PRICE = "Sales Price";
  static const String MARGIN = "Margin %";
  static const String SRP = "Unit Suggested Retail Price / SRP";
  static const String SRP_PERCENTAGE = "SRP %";
  static const String TAGS = "Tags";
  static const String NOTES = "Notes";

  // Toggles
  static const String TAXABLE = "Taxable";
  static const String NEW_PRODUCT = "New Arrival Product";
  static const String FEATURED_PRODUCT = "Featured Product";

  // Buttons
  static const String SIGN_ME_IN = "Sign me in";
  static const String SIGN_ME_UP = "Sign me up";
  static const String REGISTER_WITH_GOOGLE = "Register with Google";
  static const String GOOGLE = "Google";
  static const String SIGN_IN_WITH_GOOGLE = "Sign in with Google";
  static const String SIGN_UP_WITH_GOOGLE = "Sign up with Google";
  static const String CONTINUE_WITH_FACEBOOK = "Continue with Facebook";
  static const String FACEBOOK = "Facebook";
  static const String LOGIN_WITH_FACEBOOK = "Login With Facebook";
  static const String USE_EMAIL = "I'll use EMAIL or phone";

  static const String ALREADY_HAVE_AN_ACCOUNT = "Already have an account? ";
  static const String FORGOT_PASSWORD = "Forgot Password?";
  static const String FORGOT_PASSWORD_EX = "Reset password for your account";
  static const String SEND_RESET_LINK = "Send Reset Link";
  static const String ACCEPT_TERMS = "I accept the policy and terms";
  static const String ACCEPT_CONDITIONS =
      "I agree with the Terms and Conditions";
  static const String REMEMBER_ME = "Remember me";
  static const String ALREADY_REGISTERED = "Already Registered?";
  static const String DONT_HAVE_AN_ACCOUNT = "Don't have an account? ";
  static const String NEED_HELP = "Need Help?";
  static const String OR = "OR";

  static const String ADD_PRODUCT = "Add Product";
  static const String SUBMIT = "Submit";
  static const String CANCEL = "Cancel";
  static const String SAVE = "Save";
  static const String NEXT = "Next";
  static const String PREVIOUS = "Previous";

  static const String ACTIVE = "Active";
  static const String TAX = "Tax";
  static const String NON_TAX = "Non-Tax";
  static const String OUT_OF_STOCK = "Out of Stock";

  static const String PRODUCT_FORM = "Product Form";
  static const String PRODUCT_DETAILS = "Product Details";
  static const String PRICE_FORM = "Price Form";
  static const String PRICE_DETAILS = "Price Details";

  // Api Message Strings
  static const String LOADING = 'Loading';
  static const String NO_INTERNET_CONNECTION = 'No internet connection';
  static const String SERVER_NOT_RESPONDING = 'Server not responding';
  static const String SOMETHING_WENT_WRONG = 'Something went wrong';
  static const String API_NOT_FOUND = 'Api not found';
  static const String SERVER_ERROR = 'Server error';

  // Exception Messages
  static const String TRY_AGAIN = 'Try Again';
  static const String TOO_MUCH_FILTERING = 'Too much filtering';
  static const String NO_MATCH_FOUND =
      'We couldn\'t find any results matching your applied filters.';
  static const String TRY_AGAIN_LATER =
      'The application has encountered an unknown error.\n'
      'Please try again later.';
  static const String CONNECTION_TRY_AGAIN =
      'Please check internet connection and try again.';

  // Get Storage Keys
  static const String THEME_BOX_KEY = 'userThemeStore';
  static const String THEME_MODE_KEY = 'isDarkMode';
  static const String THEME_ACCENT_KEY = 'accentColor';

  // Font Names
  static const String MONTSERRAT = 'Montserrat';
  static const String POPPINS = 'Poppins';
  static const String WORK_SANS = 'Work Sans';
}
