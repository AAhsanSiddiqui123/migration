-- Deploy: schemas/dashboard_public/tables/zip_codes/indexes/zip_codes_zip_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table
-- requires: schemas/dashboard_public/tables/zip_codes/columns/zip/column

BEGIN;
CREATE INDEX zip_codes_zip_idx ON "dashboard_public".zip_codes (zip);
COMMIT;
