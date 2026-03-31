part of 'package:subscriptions/src/presentation/paywall/paywall_page.dart';

class _FooterLinks extends StatelessWidget {
  const _FooterLinks({
    required this.theme,
    required this.strings,
    required this.onRestore,
    this.termsUrl,
    this.privacyUrl,
  });

  final PaywallTheme theme;
  final PaywallStrings strings;
  final VoidCallback onRestore;
  final String? termsUrl;
  final String? privacyUrl;

  static const _bullet = '•';

  Future<void> _launch(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return;
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          _buildLink(strings.restoreLabel, onRestore),
          _buildSeparator(),
          _buildLink(
            strings.termsLabel,
            termsUrl != null ? () => _launch(termsUrl!) : null,
          ),
          _buildSeparator(),
          _buildLink(
            strings.privacyLabel,
            privacyUrl != null ? () => _launch(privacyUrl!) : null,
          ),
        ],
      ),
    );
  }

  Widget _buildLink(String label, VoidCallback? onTap) {
    return _TapFade(
      onTap: onTap,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          color: theme.textColorSecondary,
          decorationColor: theme.textColorSecondary,
          letterSpacing: -0.1,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Text(
        _bullet,
        style: TextStyle(
          fontSize: 16,
          color: theme.textColorSecondary,
          height: 0,
        ),
      ),
    );
  }
}
