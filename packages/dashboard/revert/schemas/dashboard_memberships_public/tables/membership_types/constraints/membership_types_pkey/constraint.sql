-- Revert: schemas/dashboard_memberships_public/tables/membership_types/constraints/membership_types_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_types 
    DROP CONSTRAINT membership_types_pkey;

COMMIT;  

