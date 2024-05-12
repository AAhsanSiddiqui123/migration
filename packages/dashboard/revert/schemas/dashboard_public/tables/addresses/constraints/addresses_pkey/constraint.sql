-- Revert: schemas/dashboard_public/tables/addresses/constraints/addresses_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses 
    DROP CONSTRAINT addresses_pkey;

COMMIT;  

