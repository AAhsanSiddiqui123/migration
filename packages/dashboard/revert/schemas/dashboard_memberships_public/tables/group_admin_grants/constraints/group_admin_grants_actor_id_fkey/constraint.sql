-- Revert: schemas/dashboard_memberships_public/tables/group_admin_grants/constraints/group_admin_grants_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_admin_grants 
    DROP CONSTRAINT group_admin_grants_actor_id_fkey;

COMMIT;  

