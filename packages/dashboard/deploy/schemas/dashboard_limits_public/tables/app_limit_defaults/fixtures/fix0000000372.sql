-- Deploy: schemas/dashboard_limits_public/tables/app_limit_defaults/fixtures/fix0000000372 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limit_defaults/table

BEGIN;
INSERT INTO "dashboard_limits_public".app_limit_defaults (name, max) VALUES ('organizations', 10), ('invites', 50), ('groups', 10), ('objects', 100);
COMMIT;
