-- Deploy: schemas/dashboard_public/tables/app_constants/columns/id/alterations/alt0000001384 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table
-- requires: schemas/dashboard_public/tables/app_constants/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".app_constants 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
