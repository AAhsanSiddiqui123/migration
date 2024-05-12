-- Deploy schemas/dashboard_public/types/SocialType to pg

-- requires: schemas/dashboard_public/schema

BEGIN;

	CREATE TYPE SocialType AS ENUM ('apple', 'facebook','google');


COMMIT;
