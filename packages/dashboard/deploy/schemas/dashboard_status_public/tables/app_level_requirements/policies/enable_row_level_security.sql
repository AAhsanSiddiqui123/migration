-- Deploy: schemas/dashboard_status_public/tables/app_level_requirements/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_level_requirements
    ENABLE ROW LEVEL SECURITY;
COMMIT;
