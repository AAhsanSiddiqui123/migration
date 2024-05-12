-- Deploy: schemas/dashboard_status_public/tables/app_level_requirements/alterations/alt0000000164 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_level_requirements/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_level_requirements
    DISABLE ROW LEVEL SECURITY;
COMMIT;
