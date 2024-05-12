-- Deploy: schemas/dashboard_public/tables/phone_numbers/columns/number/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table

BEGIN;

ALTER TABLE "dashboard_public".phone_numbers ADD COLUMN number text;
COMMIT;
