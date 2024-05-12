-- Revert: schemas/dashboard_public/tables/impacts_conditions/columns/op/alterations/alt0000000727 from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts_conditions 
    ALTER COLUMN op DROP NOT NULL;


COMMIT;  

