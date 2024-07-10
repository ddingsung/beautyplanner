import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://mfrdiyqsjilugquaxyed.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
