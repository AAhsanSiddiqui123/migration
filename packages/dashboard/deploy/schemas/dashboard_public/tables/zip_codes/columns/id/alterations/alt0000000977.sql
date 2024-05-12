-- Deploy: schemas/dashboard_public/tables/zip_codes/columns/id/alterations/alt0000000977 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table
-- requires: schemas/dashboard_public/tables/zip_codes/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".zip_codes 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
