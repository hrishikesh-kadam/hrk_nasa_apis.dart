enum SmallBodyFilter {
  pha(displayName: 'PHA'),
  nea(displayName: 'NEA'),
  comet(displayName: 'Comet'),
  neaComet(displayName: 'NEA and Comet'),
  neo(displayName: 'NEO');

  const SmallBodyFilter({required this.displayName});

  final String displayName;
}
