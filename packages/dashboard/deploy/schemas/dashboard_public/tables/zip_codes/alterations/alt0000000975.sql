-- Deploy: schemas/dashboard_public/tables/zip_codes/alterations/alt0000000975 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table

BEGIN;

ALTER TABLE "dashboard_public".zip_codes
    DISABLE ROW LEVEL SECURITY;
COMMIT;
