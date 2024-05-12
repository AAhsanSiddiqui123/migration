-- Deploy: schemas/dashboard_public/tables/addresses/columns/address_line_3/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/addresses/table

BEGIN;

ALTER TABLE "dashboard_public".addresses ADD COLUMN address_line_3 text;
COMMIT;
