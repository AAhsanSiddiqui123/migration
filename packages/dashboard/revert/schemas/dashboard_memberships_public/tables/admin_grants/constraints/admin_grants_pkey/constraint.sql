-- Revert: schemas/dashboard_memberships_public/tables/admin_grants/constraints/admin_grants_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".admin_grants 
    DROP CONSTRAINT admin_grants_pkey;

COMMIT;  

