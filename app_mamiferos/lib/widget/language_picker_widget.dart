import 'package:flutter/material.dart';
import 'package:app_mamiferos/provider/locale_provider.dart';
import 'package:provider/provider.dart';
import '../l10n/l10n.dart';

class LanguageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);

    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 72,
        child: Text(
          flag,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class LanguagePickerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale;

    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: locale,
        icon: Container(width: 12),
        items: L10n.all
          .map(
            (locale){
              final flag = L10n.getFlag(locale.languageCode);

              return DropdownMenuItem(
                  child: Center(
                    child: Text(
                      flag,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
              value: locale,
                  onTap: (){
                    final provider =
                        Provider.of<LocaleProvider>(context, listen: false);

                    provider.setLocale(locale);
                  },);
            }
        ).toList(),
        onChanged: (_){},
      ),
    );
  }
}