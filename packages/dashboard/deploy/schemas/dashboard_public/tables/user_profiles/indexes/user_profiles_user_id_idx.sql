-- Deploy: schemas/dashboard_public/tables/user_profiles/indexes/user_profiles_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/table
-- requires: schemas/dashboard_public/tables/user_profiles/columns/user_id/column

BEGIN;
CREATE INDEX user_profiles_user_id_idx ON "dashboard_public".user_profiles (user_id);
COMMIT;
