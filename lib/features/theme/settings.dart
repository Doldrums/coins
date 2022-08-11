import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../config/constants.dart';
import '../../generated/locale_keys.g.dart';
import 'widgets/settings_card.dart';
import 'widgets/theme_selector_holder.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: SafeArea(
          bottom: false,
          child: SizedBox(
            height: 440,
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                      left: 24.0,
                      right: 24.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          LocaleKeys.settings_title.tr(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close_rounded),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24.0, right: 24.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 24.0,
                      right: 24.0,
                    ),
                    child: Text(
                      LocaleKeys.settings_section_title1.tr(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: ThemeSelectorHolder(
                      items: Constants.themeSelectorItems(),
                      context: context,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 24.0,
                      right: 24.0,
                    ),
                    child: Text(
                      LocaleKeys.settings_section_title2.tr(),
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                      left: 24.0,
                      right: 24.0,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.redAccent.withOpacity(0.8),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.orangeAccent.withOpacity(0.8),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.greenAccent.withOpacity(0.8),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.blue.withOpacity(0.8),
                            ),
                          ),
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.deepPurpleAccent.withOpacity(0.8),
                          ),
                          child: const Icon(
                            Icons.check,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          LocaleKeys.settings_section_subtitle.tr(),
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.color_lens_outlined),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onTertiary,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5.0,
                            spreadRadius: 5.0,
                            offset: Offset(
                              0.0,
                              -2.0,
                            ), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                          left: 24.0,
                          right: 24.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Spacer(),
                                SettingsCard(
                                  title: LocaleKeys.settings_locale_title.tr(),
                                  subtitle:
                                      context.locale.languageCode.toUpperCase(),
                                  icon: const Icon(
                                    Icons.language,
                                  ),
                                  onPressed: () async {
                                    await showConfirmationDialog<int>(
                                      style: AdaptiveStyle.material,
                                      context: context,
                                      title: 'Locale settings',
                                      actions: [
                                        AlertDialogAction(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline4!,
                                          label: LocaleKeys
                                              .settings_locale_item1
                                              .tr(),
                                          key: 1,
                                        ),
                                        AlertDialogAction(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline4!,
                                          label: LocaleKeys
                                              .settings_locale_item2
                                              .tr(),
                                          key: 2,
                                        ),
                                        AlertDialogAction(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline4!,
                                          label: LocaleKeys
                                              .settings_locale_item3
                                              .tr(),
                                          key: 3,
                                        ),
                                        AlertDialogAction(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .headline4!,
                                          label: LocaleKeys
                                              .settings_locale_item4
                                              .tr(),
                                          key: 4,
                                        ),
                                      ],
                                    ).then(
                                      (value) {
                                        switch (value) {
                                          case 1:
                                            return context.locale =
                                                const Locale('en', 'US');
                                          case 2:
                                            return context.locale =
                                                const Locale('de', 'DE');
                                          case 3:
                                            return context.locale =
                                                const Locale('fr', 'FR');
                                          case 4:
                                            return context.locale =
                                                const Locale('ru', 'RU');
                                          default:
                                            return context.locale =
                                                const Locale('en', 'US');
                                        }
                                      },
                                    );
                                  },
                                ),
                                const Spacer(),
                                SettingsCard(
                                  title:
                                      LocaleKeys.settings_currency_title.tr(),
                                  subtitle: LocaleKeys
                                      .settings_currency_subtitle
                                      .tr(),
                                  icon: const Icon(
                                    Icons.currency_exchange,
                                  ),
                                  onPressed: () async =>
                                      await showOkAlertDialog(
                                    context: context,
                                    title: 'Oops!',
                                    message:
                                        'Presently we only support USD currency.',
                                  ),
                                ),
                                const Spacer(),
                                SettingsCard(
                                  title: LocaleKeys.settings_about_title.tr(),
                                  subtitle:
                                      LocaleKeys.settings_about_subtitle.tr(),
                                  icon: const Icon(
                                    Icons.abc_outlined,
                                  ),
                                  onPressed: () => context
                                      .setLocale(const Locale('de', 'DE')),
                                ),
                                const Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
