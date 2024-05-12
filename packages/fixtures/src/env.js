import { cleanEnv, str } from 'envalid';

export default cleanEnv(
  process.env,
  {
    AIRTABLE_API_KEY: str(),
    AIRTABLE_BASE_KEY: str()
  },
  { dotEnvPath: null }
);
