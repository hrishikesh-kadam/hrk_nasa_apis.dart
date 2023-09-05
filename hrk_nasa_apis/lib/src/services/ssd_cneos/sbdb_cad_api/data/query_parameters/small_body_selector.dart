enum SmallBodySelector {
  spkId(displayName: 'SPK-ID'),
  designation(displayName: 'Designation');

  const SmallBodySelector({required this.displayName});

  final String displayName;
}
