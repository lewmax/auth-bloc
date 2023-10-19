abstract class TimeUtils {
  static String? durationToString(int? minutes) {
    if (minutes == null) return '';
    final d = Duration(minutes: minutes);
    final parts = d.toString().split(':');

    return '${parts.first.padLeft(2, '0')}:${parts[1].padLeft(2, '0')}';
  }
}
