-- Revert: schemas/dashboard_memberships_public/tables/grants/constraints/grants_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants 
    DROP CONSTRAINT grants_pkey;

COMMIT;  

