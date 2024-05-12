-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/owner_id/alterations/alt0000000736 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

