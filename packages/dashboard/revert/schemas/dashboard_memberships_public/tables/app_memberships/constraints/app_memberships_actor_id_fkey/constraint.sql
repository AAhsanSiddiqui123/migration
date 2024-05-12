-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/constraints/app_memberships_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    DROP CONSTRAINT app_memberships_actor_id_fkey;

COMMIT;  

