-- Deploy: schemas/dashboard_public/tables/app_constants/alterations/alt0000001382 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;

ALTER TABLE "dashboard_public".app_constants
    DISABLE ROW LEVEL SECURITY;
COMMIT;
