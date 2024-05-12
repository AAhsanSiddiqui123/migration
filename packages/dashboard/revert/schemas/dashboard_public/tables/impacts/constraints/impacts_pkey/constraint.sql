-- Revert: schemas/dashboard_public/tables/impacts/constraints/impacts_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts 
    DROP CONSTRAINT impacts_pkey;

COMMIT;  

