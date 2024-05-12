-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/constraints/membership_defaults_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_defaults 
    DROP CONSTRAINT membership_defaults_pkey;

COMMIT;  

