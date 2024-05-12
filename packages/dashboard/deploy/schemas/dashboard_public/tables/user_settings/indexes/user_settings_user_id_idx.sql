-- Deploy: schemas/dashboard_public/tables/user_settings/indexes/user_settings_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_public/tables/user_settings/columns/user_id/column

BEGIN;
CREATE INDEX user_settings_user_id_idx ON "dashboard_public".user_settings (user_id);
COMMIT;
