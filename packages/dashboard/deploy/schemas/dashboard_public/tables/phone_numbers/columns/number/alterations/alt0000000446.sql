-- Deploy: schemas/dashboard_public/tables/phone_numbers/columns/number/alterations/alt0000000446 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table
-- requires: schemas/dashboard_public/tables/phone_numbers/columns/number/column

BEGIN;

ALTER TABLE "dashboard_public".phone_numbers 
    ALTER COLUMN number SET NOT NULL;
COMMIT;
