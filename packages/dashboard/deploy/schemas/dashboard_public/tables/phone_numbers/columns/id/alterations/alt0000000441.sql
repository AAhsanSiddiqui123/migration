-- Deploy: schemas/dashboard_public/tables/phone_numbers/columns/id/alterations/alt0000000441 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/phone_numbers/table
-- requires: schemas/dashboard_public/tables/phone_numbers/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".phone_numbers 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
