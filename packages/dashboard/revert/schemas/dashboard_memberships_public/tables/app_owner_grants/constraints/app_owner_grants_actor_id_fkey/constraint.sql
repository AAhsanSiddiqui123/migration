-- Revert: schemas/dashboard_memberships_public/tables/app_owner_grants/constraints/app_owner_grants_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_owner_grants 
    DROP CONSTRAINT app_owner_grants_actor_id_fkey;

COMMIT;  

