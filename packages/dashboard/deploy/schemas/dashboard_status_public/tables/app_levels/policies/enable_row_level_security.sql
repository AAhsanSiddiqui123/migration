-- Deploy: schemas/dashboard_status_public/tables/app_levels/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_levels
    ENABLE ROW LEVEL SECURITY;
COMMIT;
