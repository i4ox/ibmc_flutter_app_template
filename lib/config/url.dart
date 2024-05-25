// TODO(init-project): Add server urls

/// Server url.
enum Url {
  /// Dev url.
  dev(""),

  /// Prod url.
  prod("");

  /// Url value.
  final String value;

  const Url(this.value);
}
