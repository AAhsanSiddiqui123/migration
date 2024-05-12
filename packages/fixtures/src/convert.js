export const ParseDMS = (input) => {
  const parts = input.split(/[^\d\w.]+/);
  const lat = ConvertDMSToDD(parts[0], parts[1], parts[2], parts[3]);
  const lng = ConvertDMSToDD(parts[4], parts[5], parts[6], parts[7]);
  return {
    lat,
    lng
  };
};

export const ParseSingle = (input) => {
  const parts = input.split(/[^\d\w.]+/);
  return ConvertDMSToDD(parts[0], parts[1], parts[2], parts[3]);
};

// ParseDMS(`34°00'34.1" N 118°26'48.1" W`);
// ParseSingle(`118°26'48.1" W`);
// ParseSingle(`34°00'34.1" N`);

export const ConvertDMSToDD = (degrees, minutes, seconds, direction) => {
  let dd = Number(degrees) + Number(minutes) / 60 + Number(seconds) / (60 * 60);
  if (direction == 'S' || direction == 'W') {
    dd = dd * -1;
  } // Don't do anything for N or E
  return dd;
};

export const normalizeCoordinate = (coord) => {
  if (!coord) return null;
  coord = coord.trim();
  const bytelike = unescape(encodeURIComponent(coord));
  coord = decodeURIComponent(escape(bytelike));
  if (/[°]/.test(coord)) return ParseSingle(coord);
  return Number(coord);
};

export const convertDuration = (def = '0 seconds') => (val) => {
  if (typeof val === 'number') {
    return val + ' seconds';
  }
  return def;
};

export const trim = (val) => {
  if (typeof val === 'string') {
    return val.trim();
  }
  return val;
};
