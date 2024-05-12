-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/id/alterations/alt0000000726 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

