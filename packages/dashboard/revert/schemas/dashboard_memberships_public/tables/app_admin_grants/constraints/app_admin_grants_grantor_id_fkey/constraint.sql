-- Revert: schemas/dashboard_memberships_public/tables/app_admin_grants/constraints/app_admin_grants_grantor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_admin_grants 
    DROP CONSTRAINT app_admin_grants_grantor_id_fkey;

COMMIT;  

