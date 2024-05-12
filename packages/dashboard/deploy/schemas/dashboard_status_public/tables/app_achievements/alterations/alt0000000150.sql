-- Deploy: schemas/dashboard_status_public/tables/app_achievements/alterations/alt0000000150 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_achievements/table

BEGIN;

ALTER TABLE "dashboard_status_public".app_achievements
    DISABLE ROW LEVEL SECURITY;
COMMIT;
