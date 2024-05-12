-- Revert: schemas/dashboard_public/tables/addresses/constraints/addresses_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses 
    DROP CONSTRAINT addresses_owner_id_fkey;

COMMIT;  

