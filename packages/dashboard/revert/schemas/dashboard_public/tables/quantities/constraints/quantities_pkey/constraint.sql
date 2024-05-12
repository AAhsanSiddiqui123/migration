-- Revert: schemas/dashboard_public/tables/quantities/constraints/quantities_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities 
    DROP CONSTRAINT quantities_pkey;

COMMIT;  

