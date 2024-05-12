-- Deploy: schemas/dashboard_public/tables/app_constants/fixtures/fix0000001387 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;
INSERT INTO "dashboard_public".app_constants (name, value) VALUES ('ios-version', '{"version":"v1.0.0"}'::json), ('android-version', '{"version":"v1.0.0"}'::json);
COMMIT;
