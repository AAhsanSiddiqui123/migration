-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/attr_id/alterations/alt0000000733 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN attr_id DROP NOT NULL;


COMMIT;  

