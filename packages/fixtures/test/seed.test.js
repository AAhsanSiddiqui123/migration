import { getConnections } from './utils';
jasmine.DEFAULT_TIMEOUT_INTERVAL = 6000000;

let db, dbs, conn, teardown;
const objs = {
  tables: {}
};

beforeAll(async () => {
  ({ db, conn, teardown } = await getConnections());
  dbs = db.helper('dashboard_public');
});

afterAll(async () => {
  try {
    //try catch here allows us to see the sql parsing issues!
    await teardown();
  } catch (e) {
    // noop
  }
});

beforeEach(async () => {
  await db.beforeEach();
});

afterEach(async () => {
  await db.afterEach();
});

it('users', async () => {
  const objs = {};
  objs.users = await db.any('SELECT count(*) FROM dashboard_public.users');

  objs.user_settings = await db.any(
    'SELECT count(*) FROM dashboard_public.user_settings'
  );

  objs.user_characteristics = await db.any(
    'SELECT count(*) FROM dashboard_public.user_characteristics'
  );

  objs.user_profiles = await db.any(
    'SELECT count(*) FROM dashboard_public.user_profiles'
  );

  objs.organization_profiles = await db.any(
    'SELECT count(*) FROM dashboard_public.organization_profiles'
  );

  objs.goals = await db.any('SELECT count(*) FROM dashboard_public.goals');
  objs.goal_explanations = await db.any(
    'SELECT count(*) FROM dashboard_public.goal_explanations'
  );

  objs.actions = await db.any('SELECT count(*) FROM dashboard_public.actions');

  objs.action_items = await db.any(
    'SELECT count(*) FROM dashboard_public.action_items'
  );

  console.log(objs);
});
