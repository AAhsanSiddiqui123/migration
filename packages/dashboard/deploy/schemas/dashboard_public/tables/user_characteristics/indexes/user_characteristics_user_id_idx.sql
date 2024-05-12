-- Deploy: schemas/dashboard_public/tables/user_characteristics/indexes/user_characteristics_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/user_id/column

BEGIN;
CREATE INDEX user_characteristics_user_id_idx ON "dashboard_public".user_characteristics (user_id);
COMMIT;
