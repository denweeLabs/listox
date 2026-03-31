import 'package:url_launcher/url_launcher_string.dart';

enum LinkLaunchType { url, domain }

class CoreLauncherUtil {
  static Future<bool> launchDeeplink(String link) {
    return launchUrl(link, mode: LaunchMode.platformDefault);
  }

  static Future<bool> launchUrl(
    String url, {
    LinkLaunchType linkType = LinkLaunchType.url,
    LaunchMode mode = LaunchMode.externalApplication,
  }) async {
    final processedLink = _retrieveLink(url: url, type: linkType);
    final canLaunch = await _isUrlLaunchable(processedLink);
    if (!canLaunch) return false;
    return launchUrlString(processedLink, mode: mode);
  }

  static Future<bool> launchPlaceOnMap(String name) async {
    final query = Uri.encodeComponent(name);
    final url = 'https://www.google.com/maps/search/?api=1&query=$query';
    final canLaunch = await _isUrlLaunchable(url);
    if (!canLaunch) return false;
    return launchUrl(url, mode: LaunchMode.externalApplication);
  }

  static Future<bool> launchEmail({
    required List<String> to,
    String? subject,
    String? body,
  }) async {
    final url = Uri(
      scheme: 'mailto',
      path: to.join(','),
      queryParameters: {
        if (subject != null && subject.isNotEmpty) 'subject': subject,
        if (body != null && body.isNotEmpty) 'body': body,
      },
    ).toString();
    return launchUrl(url);
  }

  static String _retrieveLink({
    required String url,
    required LinkLaunchType type,
  }) {
    switch (type) {
      case LinkLaunchType.url:
        return url;
      case LinkLaunchType.domain:
        return Uri.parse(url).origin;
    }
  }

  static Future<bool> _isUrlLaunchable(String url) {
    try {
      return canLaunchUrlString(url);
    } catch (_) {
      return Future.value(false);
    }
  }
}
