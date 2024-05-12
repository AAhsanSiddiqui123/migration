-- Revert: schemas/dashboard_public/tables/impacts/columns/id/alterations/alt0000000708 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

