-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/impact_id/alterations/alt0000000731 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN impact_id DROP NOT NULL;


COMMIT;  

