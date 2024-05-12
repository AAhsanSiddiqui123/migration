-- Deploy: schemas/dashboard_status_public/tables/app_levels/constraints/app_levels_name_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_levels
    ADD CONSTRAINT app_levels_name_key UNIQUE (name);
COMMIT;
