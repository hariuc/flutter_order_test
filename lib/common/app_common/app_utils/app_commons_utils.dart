part of app_common_utils;

class AppCommonsUtils {
  static List<BlocProvider> getBlocProvidersList(
      {required BuildContext context}) {
    return [
      // BlocProvider<MainPageCubit>(create: (context) => MainPageCubit()),
      // BlocProvider<RefugeMainMenuCubit>(
      //     create: (context) => RefugeMainMenuCubit()),
      // BlocProvider<AssistanceServiceMainMenuCubit>(
      //     create: (context) => AssistanceServiceMainMenuCubit()),
      // BlocProvider<RefugeeTableDetailPageCubit>(
      //     create: (context) => RefugeeTableDetailPageCubit()),
      // BlocProvider<LanguageSelectCubit>(
      //     create: (context) => LanguageSelectCubit()),
      // BlocProvider<CountrySelectCubit>(
      //     create: (context) => CountrySelectCubit()),
      // BlocProvider<EducationSelectCubit>(
      //     create: (context) => EducationSelectCubit()),
      // BlocProvider<ProfessionSelectCubit>(
      //     create: (context) => ProfessionSelectCubit()),
      // BlocProvider<ProductSelectFormCubit>(
      //     create: (context) => ProductSelectFormCubit()),
      // BlocProvider<LanguageLevelSelectCubit>(
      //     create: (context) => LanguageLevelSelectCubit()),
      // BlocProvider<DocumentTypeSelectCubit>(
      //     create: (context) => DocumentTypeSelectCubit()),
      // BlocProvider<RefugeeSelectCubit>(
      //     create: (context) => RefugeeSelectCubit()),
      // BlocProvider<ReceiptProductTableCubit>(
      //     create: (context) => ReceiptProductTableCubit()),
      // BlocProvider<SaleProductTableCubit>(
      //     create: (context) => SaleProductTableCubit()),
      // BlocProvider<RefugeeProfessionsListTableCubit>(
      //     create: (context) => RefugeeProfessionsListTableCubit()),
      // BlocProvider<RefugeeEducationsListTableCubit>(
      //     create: (context) => RefugeeEducationsListTableCubit()),
      // BlocProvider<RefugeeLanguageLevelListTableCubit>(
      //     create: (context) => RefugeeLanguageLevelListTableCubit()),
      // BlocProvider<TotalSumaDocumentCubit>(
      //     create: (context) => TotalSumaDocumentCubit()),
      // BlocProvider<SetDateIntervalReceiptCubit>(
      //     create: (context) => SetDateIntervalReceiptCubit()),
      // BlocProvider<SetDateIntervalSaleCubit>(
      //     create: (context) => SetDateIntervalSaleCubit()),
      // BlocProvider<ReportMainMenuCubit>(
      //     create: (context) => ReportMainMenuCubit()),
      // BlocProvider<ReportRefugeeProductFilterCubit>(
      //     create: (context) => ReportRefugeeProductFilterCubit()),
      // BlocProvider<SettingsMainMenuCubit>(
      //     create: (context) => SettingsMainMenuCubit()),
      // BlocProvider<GenderCubit>(create: (context) => GenderCubit()),
      // BlocProvider<FamilyStatusCubit>(create: (context) => FamilyStatusCubit()),
      // BlocProvider<ChildCubit>(create: (context) => ChildCubit()),
      // BlocProvider<FamilyMembersCubit>(
      //     create: (context) => FamilyMembersCubit()),
      // BlocProvider<RefugeePhotoCubit>(create: (context) => RefugeePhotoCubit()),
      // BlocProvider<RefugeeNameSortingCubit>(
      //     create: (context) => RefugeeNameSortingCubit()),
      // BlocProvider<CountryNameSortingCubit>(
      //     create: (context) => CountryNameSortingCubit()),
      // BlocProvider<DocTypeNameSortingCubit>(
      //     create: (context) => DocTypeNameSortingCubit()),
      // BlocProvider<EducationNameSortingCubit>(
      //     create: (context) => EducationNameSortingCubit()),
      // BlocProvider<LanguageNameSortingCubit>(
      //     create: (context) => LanguageNameSortingCubit()),
      // BlocProvider<ProfessionNameSortingCubit>(
      //     create: (context) => ProfessionNameSortingCubit()),
      // BlocProvider<RegistrationLogSortingDateCubit>(
      //     create: (context) => RegistrationLogSortingDateCubit(value: false)),
      // BlocProvider<ReceiptProductsServicesSortingDateCubit>(
      //     create: (context) =>
      //         ReceiptProductsServicesSortingDateCubit(value: true)),
      // BlocProvider<SaleProductServiceSortingDateCubit>(
      //     create: (context) => SaleProductServiceSortingDateCubit(value: true)),
      // BlocProvider<LanguageLevelNameSortingCubit>(
      //     create: (context) => LanguageLevelNameSortingCubit()),
      // BlocProvider<ProductServiceNameSortingCubit>(
      //     create: (context) => ProductServiceNameSortingCubit()),
      // BlocProvider<RegistrationLogSetDateIntervalCubit>(
      //     create: (context) => RegistrationLogSetDateIntervalCubit()),
      // BlocProvider<DoctypeCubit>(
      //     create: (context) => DoctypeCubit(
      //         repository: GetIt.instance.get<DoctypeRepository>())),
      // BlocProvider<CountryCubit>(
      //     create: (context) => CountryCubit(
      //         repository: GetIt.instance.get<CountryRepository>())),
      // BlocProvider<LanguageCubit>(
      //     create: (context) => LanguageCubit(
      //         repository: GetIt.instance.get<LanguageRepository>())),
      // BlocProvider<ProfessionCubit>(
      //     create: (context) => ProfessionCubit(
      //         repository: GetIt.instance.get<ProfessionRepository>())),
      // BlocProvider<EducationCubit>(
      //     create: (context) => EducationCubit(
      //         repository: GetIt.instance.get<EducationRepository>())),
      // BlocProvider<LanguageLevelCubit>(
      //     create: (context) => LanguageLevelCubit(
      //         repository: GetIt.instance.get<LanguageLevelRepository>())),
      // BlocProvider<RefugeeCubit>(
      //     create: (context) => RefugeeCubit(
      //         repository: GetIt.instance.get<RefugeeRepository>())),
      // BlocProvider<RefugeeDetailCubit>(
      //     create: (context) => RefugeeDetailCubit(
      //         repository: GetIt.instance.get<RefugeeRepository>())),
      // BlocProvider<ProductServiceCubit>(
      //     create: (context) => ProductServiceCubit(
      //         repository: GetIt.instance.get<ProductServiceRepository>())),
      // BlocProvider<ReceiptProductsServicesCubit>(
      //     create: (context) => ReceiptProductsServicesCubit(
      //         repository:
      //         GetIt.instance.get<ReceiptProductServiceRepository>())),
      // BlocProvider<SaleProductServiceCubit>(
      //     create: (context) => SaleProductServiceCubit(
      //         repository: GetIt.instance.get<SaleProductServiceRepository>())),
      // BlocProvider<ReportRefugeesByGendersCubit>(
      //     create: (context) => ReportRefugeesByGendersCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<ReportRefugeesByCountriesCubit>(
      //     create: (context) => ReportRefugeesByCountriesCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<ReportRefugeesProductsCubit>(
      //     create: (context) => ReportRefugeesProductsCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<RefugeeChildrenListCubit>(
      //     create: (context) => RefugeeChildrenListCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<MaritalStatusCubit>(
      //     create: (context) => MaritalStatusCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<ProductBalanceCubit>(
      //     create: (context) => ProductBalanceCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<BalancesTurnoversProductCubit>(
      //     create: (context) => BalancesTurnoversProductCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<ConnectSettingsCubit>(
      //     create: (context) => ConnectSettingsCubit(
      //         repository: GetIt.instance.get<SharedPreferencesRepository>())),
      // BlocProvider<DateIntervalCubit>(
      //     create: (context) => DateIntervalCubit(
      //         repository: GetIt.instance.get<SharedPreferencesRepository>())),
      // BlocProvider<LoginCubit>(
      //     create: (context) =>
      //         LoginCubit(repository: GetIt.instance.get<UserRepository>())),
      // BlocProvider<CheckRefugeeForDocumentNumberCubit>(
      //     create: (context) => CheckRefugeeForDocumentNumberCubit(
      //         repository: GetIt.instance.get<RefugeeRepository>())),
      // BlocProvider<RegistrationLogCubit>(
      //     create: (context) => RegistrationLogCubit(
      //         repository: GetIt.instance.get<RegistrationLogRepository>())),
      // BlocProvider<NameFieldCheckCubit>(
      //   create: (context) => NameFieldCheckCubit(),
      // ),
      // BlocProvider<CountryCodeFieldCheckCubit>(
      //   create: (context) => CountryCodeFieldCheckCubit(),
      // ),
      // BlocProvider<SaleProductBalanceErrorCubit>(
      //     create: (context) => SaleProductBalanceErrorCubit()),
      // BlocProvider<DateGraduationRefugeeFieldCheckCubit>(
      //     create: (context) => DateGraduationRefugeeFieldCheckCubit()),
      // BlocProvider<DisabilityGroupCubit>(
      //     create: (context) => DisabilityGroupCubit()),
      // BlocProvider<DisabilityChartReportCubit>(
      //     create: (context) => DisabilityChartReportCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<DisabilityRefugeeReportCubit>(
      //     create: (context) => DisabilityRefugeeReportCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
      // BlocProvider<DisabilityChartByGenderReportCubit>(
      //     create: (context) => DisabilityChartByGenderReportCubit(
      //         repository: GetIt.instance.get<ReportsRepository>())),
    ];
  }
}