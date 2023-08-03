enum SmallBody {
  pha(displayName: 'PHA'),
  nea(displayName: 'NEA'),
  comet(displayName: 'Comet'),
  neaComet(displayName: 'NEA and Comet'),
  neo(displayName: 'NEO');

  const SmallBody({required this.displayName});

  final String displayName;
}
