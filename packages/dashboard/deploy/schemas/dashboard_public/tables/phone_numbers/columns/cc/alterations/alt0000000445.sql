-- Deploy: schemas/dashboard_public/tables/phone_numbers/columns/cc/alterations/alt0000000445 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table
-- requires: schemas/dashboard_public/tables/phone_numbers/columns/cc/column

BEGIN;

ALTER TABLE "dashboard_public".phone_numbers 
    ALTER COLUMN cc SET NOT NULL;
COMMIT;
