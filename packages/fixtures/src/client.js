import Airtable from 'airtable';
import env from './env';
const { AIRTABLE_BASE_KEY, AIRTABLE_API_KEY } = env;
Airtable.configure({
  endpointUrl: 'https://api.airtable.com',
  apiKey: AIRTABLE_API_KEY
});
export const base = Airtable.base(AIRTABLE_BASE_KEY);

export const getAll = (name) => {
  return base(name)
    .select({
      view: 'PRODUCTION' // HARD CODING THE VIEWS TO "PRODUCTION"
    })
    .all();
};

export const getOne = (name, id) => {
  return new Promise((resolve, reject) => {
    base(name).find(id, function (err, record) {
      if (err) {
        reject(err);
      }
      resolve(record);
    });
  });
};

export const populateRelatedArray = async ({
  record,
  airO,
  field,
  refTable,
  refField
}) => {
  const ref = airO.get(field);
  record[field] = [];
  if (!ref) return record;
  for (const recId of ref) {
    const o = await getOne(refTable, recId);
    record[field].push(o.get(refField));
  }
  return record;
};

export const populateRelated = async ({
  record,
  airO,
  field,
  refTable,
  refField
}) => {
  const ref = airO.get(field);
  record[field] = '';
  if (!ref) return record;
  for (const recId of ref) {
    const o = await getOne(refTable, recId);
    record[field] = o.get(refField);
  }
  return record;
};

export const parseImage = (obj) => {
  if (!obj) return;
  if (Array.isArray(obj)) {
    throw new Error('must flatten images first!');
  }
  delete obj.id;
  obj.mime = obj.type;
  obj.versions = obj.thumbnails;
  if (obj.versions) {
    obj.versions = Object.keys(obj.versions)
      .map((key) => {
        if (key === 'small') return null;
        if (key === 'full') return null;
        const version = obj.versions[key];
        const { url, width, height } = version;
        return { url, width, height };
      })
      .filter((i) => i);
  }
  delete obj.type;
  delete obj.thumbnails;
  return obj;
};

export const parseFile = (obj) => {
  if (!obj) return;
  console.log(obj);
  delete obj.id;
  obj.mime = obj.type;
  delete obj.type;
  delete obj.thumbnails;
  return obj;
};

export class Table {
  constructor(name) {
    this.name = name;
  }
  all() {
    return getAll(this.name);
  }
  async populate(opts = {}) {
    try {
      const records = await this.all();
      const returned = [];
      for (const a of records) {
        let build = {
          ...a.fields
        };
        // eslint-disable-next-line no-unused-expressions
        opts.delete?.forEach((del) => {
          delete build[del];
        });
        // eslint-disable-next-line no-unused-expressions
        opts.flatten?.forEach((one) => {
          if (build[one] && build[one].length) build[one] = build[one][0];
        });
        const rels = opts.relations || [];
        for (const r of rels) {
          if (r.isArray) {
            build = await populateRelatedArray({
              record: build,
              airO: a,
              field: r.field,
              refTable: r.refTable,
              refField: r.refField
            });
          } else {
            build = await populateRelated({
              record: build,
              airO: a,
              field: r.field,
              refTable: r.refTable,
              refField: r.refField
            });
          }
        }
        if (opts.visit) {
          build = Object.entries(opts.visit).reduce((m, v) => {
            const [key, value] = v;
            m[key] = value(build[key]);
            return m;
          }, build);
        }
        returned.push(build);
      }
      return returned;
    } catch (e) {
      console.log(e);
      throw e;
    }
  }
  get(id) {
    return getOne(this.name, id);
  }
}

export class Client {
  constructor(tables = []) {
    tables.forEach((table) => {
      this[table] = new Table(table);
    });
  }
}
