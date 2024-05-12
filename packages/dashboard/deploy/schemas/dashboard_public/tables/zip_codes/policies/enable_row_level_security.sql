-- Deploy: schemas/dashboard_public/tables/zip_codes/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table

BEGIN;

ALTER TABLE "dashboard_public".zip_codes
    ENABLE ROW LEVEL SECURITY;
COMMIT;
