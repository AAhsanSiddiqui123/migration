-- Revert: schemas/dashboard_memberships_public/tables/group_grants/constraints/group_grants_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_grants 
    DROP CONSTRAINT group_grants_pkey;

COMMIT;  

