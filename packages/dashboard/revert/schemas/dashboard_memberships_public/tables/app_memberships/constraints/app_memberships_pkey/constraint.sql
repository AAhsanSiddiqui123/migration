-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/constraints/app_memberships_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships 
    DROP CONSTRAINT app_memberships_pkey;

COMMIT;  

