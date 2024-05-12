-- Deploy: schemas/dashboard_public/tables/zip_codes/constraints/zip_codes_zip_key/alterations/alt0000000978 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/constraints/zip_codes_zip_key/constraint

BEGIN;
COMMENT ON CONSTRAINT zip_codes_zip_key ON "dashboard_public".zip_codes IS NULL;
COMMIT;
