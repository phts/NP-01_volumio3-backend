function getTrackBlockId(trackBlock) {
  if (!trackBlock) {
    return null
  }

  const {duration, name, artist, album} = trackBlock
  return [duration, name, artist, album].join('-')
}

module.exports = {getTrackBlockId}
