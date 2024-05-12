-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/value/alterations/alt0000000730 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN value DROP NOT NULL;


COMMIT;  

