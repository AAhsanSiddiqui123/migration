-- Deploy: schemas/dashboard_public/tables/app_constants/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;

ALTER TABLE "dashboard_public".app_constants
    ENABLE ROW LEVEL SECURITY;
COMMIT;
