-- Deploy: schemas/dashboard_public/tables/user_settings/indexes/user_settings_extended_bounds_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_public/tables/user_settings/columns/extended_bounds/column

BEGIN;
CREATE INDEX user_settings_extended_bounds_idx ON "dashboard_public".user_settings USING GIST (extended_bounds);
COMMIT;
