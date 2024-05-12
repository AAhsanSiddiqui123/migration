-- Deploy: schemas/dashboard_public/tables/zip_codes/constraints/zip_codes_zip_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table

BEGIN;

ALTER TABLE "dashboard_public".zip_codes
    ADD CONSTRAINT zip_codes_zip_key UNIQUE (zip);
COMMIT;
