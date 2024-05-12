-- Deploy: schemas/dashboard_public/tables/zip_codes/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/zip_codes/table

BEGIN;

ALTER TABLE "dashboard_public".zip_codes ADD COLUMN id uuid;
COMMIT;
