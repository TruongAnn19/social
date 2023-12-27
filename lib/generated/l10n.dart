// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Đồng ý`
  String get ok {
    return Intl.message(
      'Đồng ý',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Hủy`
  String get cancel {
    return Intl.message(
      'Hủy',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again later.`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong. Please try again later.',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `No internet!`
  String get error_network {
    return Intl.message(
      'No internet!',
      name: 'error_network',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Your session has expired. Please sign in.`
  String get unauthorized {
    return Intl.message(
      'Your session has expired. Please sign in.',
      name: 'unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get search {
    return Intl.message(
      'Search...',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Tìm kiếm...`
  String get search_for_contacts {
    return Intl.message(
      'Tìm kiếm...',
      name: 'search_for_contacts',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Xin chào`
  String get hello {
    return Intl.message(
      'Xin chào',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng đăng nhập để sử dụng ứng dụng`
  String get wellcom_login {
    return Intl.message(
      'Vui lòng đăng nhập để sử dụng ứng dụng',
      name: 'wellcom_login',
      desc: '',
      args: [],
    );
  }

  /// `Tài khoản`
  String get account {
    return Intl.message(
      'Tài khoản',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message(
      'Mật khẩu',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Sai định dạng email`
  String get dinh_dang_email {
    return Intl.message(
      'Sai định dạng email',
      name: 'dinh_dang_email',
      desc: '',
      args: [],
    );
  }

  /// `Sai định dạng số điện thoại`
  String get dinh_dang_sdt {
    return Intl.message(
      'Sai định dạng số điện thoại',
      name: 'dinh_dang_sdt',
      desc: '',
      args: [],
    );
  }

  /// `Không được để trống`
  String get khong_duoc_de_trong {
    return Intl.message(
      'Không được để trống',
      name: 'khong_duoc_de_trong',
      desc: '',
      args: [],
    );
  }

  /// ` Số lượng thiết bị chỉ có thể có các kí tự số`
  String get check_so_luong {
    return Intl.message(
      ' Số lượng thiết bị chỉ có thể có các kí tự số',
      name: 'check_so_luong',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message(
      'Đăng nhập',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập thất bại hãy thử lại`
  String get dang_nhap_that_bai {
    return Intl.message(
      'Đăng nhập thất bại hãy thử lại',
      name: 'dang_nhap_that_bai',
      desc: '',
      args: [],
    );
  }

  /// `Quên mật khẩu`
  String get quen_mat_khau {
    return Intl.message(
      'Quên mật khẩu',
      name: 'quen_mat_khau',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký`
  String get dang_ky {
    return Intl.message(
      'Đăng ký',
      name: 'dang_ky',
      desc: '',
      args: [],
    );
  }

  /// `Không có dữ liệu`
  String get khong_co_du_lieu {
    return Intl.message(
      'Không có dữ liệu',
      name: 'khong_co_du_lieu',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin tài khoản hoặc mật khẩu của bạn không chính xác, vui lòng kiểm tra lại`
  String get tai_khoan_hoac_mat_khau_khong_chinh_xac {
    return Intl.message(
      'Thông tin tài khoản hoặc mật khẩu của bạn không chính xác, vui lòng kiểm tra lại',
      name: 'tai_khoan_hoac_mat_khau_khong_chinh_xac',
      desc: '',
      args: [],
    );
  }

  /// `Địa chỉ email đã được một tài khoản khác sử dụng.`
  String get email_da_duoc_su_dung {
    return Intl.message(
      'Địa chỉ email đã được một tài khoản khác sử dụng.',
      name: 'email_da_duoc_su_dung',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu của bạn phải dài hơn 6 ký tự`
  String get password_dai_hon_6_ky_tu {
    return Intl.message(
      'Mật khẩu của bạn phải dài hơn 6 ký tự',
      name: 'password_dai_hon_6_ky_tu',
      desc: '',
      args: [],
    );
  }

  /// `Email của bạn sai định dạng`
  String get email_sai_dinh_dang {
    return Intl.message(
      'Email của bạn sai định dạng',
      name: 'email_sai_dinh_dang',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get welcome_to {
    return Intl.message(
      'Welcome to',
      name: 'welcome_to',
      desc: '',
      args: [],
    );
  }

  /// `Socially`
  String get socially {
    return Intl.message(
      'Socially',
      name: 'socially',
      desc: '',
      args: [],
    );
  }

  /// `Tạo thông tin người dùng`
  String get tao_thong_tin_nguoi_dung {
    return Intl.message(
      'Tạo thông tin người dùng',
      name: 'tao_thong_tin_nguoi_dung',
      desc: '',
      args: [],
    );
  }

  /// `VD : Nguyễn Văn A`
  String get nguyen_van_a {
    return Intl.message(
      'VD : Nguyễn Văn A',
      name: 'nguyen_van_a',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận mật khẩu`
  String get xac_nhan_mat_khau {
    return Intl.message(
      'Xác nhận mật khẩu',
      name: 'xac_nhan_mat_khau',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mật khẩu chưa chính xác`
  String get nhap_lai_mat_khau_chua_chinh_xac {
    return Intl.message(
      'Nhập lại mật khẩu chưa chính xác',
      name: 'nhap_lai_mat_khau_chua_chinh_xac',
      desc: '',
      args: [],
    );
  }

  /// `Ngày sinh`
  String get ngay_sinh {
    return Intl.message(
      'Ngày sinh',
      name: 'ngay_sinh',
      desc: '',
      args: [],
    );
  }

  /// `Giới tính`
  String get gioi_tinh {
    return Intl.message(
      'Giới tính',
      name: 'gioi_tinh',
      desc: '',
      args: [],
    );
  }

  /// `Họ tên`
  String get ho_ten {
    return Intl.message(
      'Họ tên',
      name: 'ho_ten',
      desc: '',
      args: [],
    );
  }

  /// `Tạo tài khoản thành công`
  String get tao_tai_khoan_thanh_cong {
    return Intl.message(
      'Tạo tài khoản thành công',
      name: 'tao_tai_khoan_thanh_cong',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật tài khoản`
  String get cap_nhat_tai_khoan {
    return Intl.message(
      'Cập nhật tài khoản',
      name: 'cap_nhat_tai_khoan',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật`
  String get cap_nhat {
    return Intl.message(
      'Cập nhật',
      name: 'cap_nhat',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật tài khoản thành công`
  String get cap_nhat_tai_khoan_thanh_cong {
    return Intl.message(
      'Cập nhật tài khoản thành công',
      name: 'cap_nhat_tai_khoan_thanh_cong',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu`
  String get doi_mat_khau {
    return Intl.message(
      'Đổi mật khẩu',
      name: 'doi_mat_khau',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu hiện tại`
  String get mat_khau_hien_tai {
    return Intl.message(
      'Mật khẩu hiện tại',
      name: 'mat_khau_hien_tai',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu mới`
  String get mat_khau_moi {
    return Intl.message(
      'Mật khẩu mới',
      name: 'mat_khau_moi',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận mật khẩu mới`
  String get xac_nhan_mat_khau_moi {
    return Intl.message(
      'Xác nhận mật khẩu mới',
      name: 'xac_nhan_mat_khau_moi',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu hiện tại chưa chính xác`
  String get mat_khau_hien_tai_chua_chinh_xac {
    return Intl.message(
      'Mật khẩu hiện tại chưa chính xác',
      name: 'mat_khau_hien_tai_chua_chinh_xac',
      desc: '',
      args: [],
    );
  }

  /// `Đổi mật khẩu thành công`
  String get doi_mat_khau_thanh_cong {
    return Intl.message(
      'Đổi mật khẩu thành công',
      name: 'doi_mat_khau_thanh_cong',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký thất bại`
  String get dang_ky_that_bai {
    return Intl.message(
      'Đăng ký thất bại',
      name: 'dang_ky_that_bai',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo`
  String get thong_bao {
    return Intl.message(
      'Thông báo',
      name: 'thong_bao',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
