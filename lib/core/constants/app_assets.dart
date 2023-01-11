abstract class AppAssets {
  AppAssets._();

  static AppIcons get icons => AppIcons();

  static AppImages get images => AppImages();
}

abstract class AssetsFolder {
  final String basePath;

  AssetsFolder(this.basePath);
}

class AppIcons extends AssetsFolder {
  AppIcons() : super('assets/icons');

  String get arrowLeft => '$basePath/arrow-left.svg';

  String get arrowRight => '$basePath/arrow-right.svg';

  String get booksActive => '$basePath/books-active.svg';

  String get books => '$basePath/books.svg';

  String get calendarActive => '$basePath/calendar-active.svg';

  String get calendarBlack => '$basePath/calendar-black.svg';

  String get calendar => '$basePath/calendar.svg';

  String get eyeHide => '$basePath/eye-hide.svg';

  String get eye => '$basePath/eye.svg';

  String get homeActive => '$basePath/home-active.svg';

  String get home => '$basePath/home.svg';

  String get location => '$basePath/location.svg';

  String get lock => '$basePath/lock.svg';

  String get more => '$basePath/more.svg';

  String get profileActive => '$basePath/profile-active.svg';

  String get profile => '$basePath/profile.svg';

  String get search => '$basePath/search.svg';

  String get timeActive => '$basePath/time-active.svg';

  String get time => '$basePath/time.svg';

  String get user => '$basePath/user.svg';

  String get loading => '$basePath/loading.svg';

  String get language => '$basePath/language.svg';

  String get arrowBottom => '$basePath/arrow-bottom.svg';

  String get phone => "$basePath/phone.svg";

  String get time1 => "$basePath/time1.svg";

  String get time2 => "$basePath/time2.svg";

  String get time3 => "$basePath/time3.svg";

  String get time4 => "$basePath/time4.svg";

  String get time5 => "$basePath/time5.svg";

  String get findCalendar => '$basePath/find-calendar.svg';

  String get book => '$basePath/book.svg';

  String get arrow2 => '$basePath/arrow-right-2.svg';

  String get peoples => '$basePath/peoples.svg';
}

class AppImages extends AssetsFolder {
  AppImages() : super('assets/images');

  String get logo => '$basePath/logo.png';

  String get welcomeBg => '$basePath/welcomeBg.png';

  String get tourBg => '$basePath/tour-background.png';
}
