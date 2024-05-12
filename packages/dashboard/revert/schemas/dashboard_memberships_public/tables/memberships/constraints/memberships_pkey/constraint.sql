-- Revert: schemas/dashboard_memberships_public/tables/memberships/constraints/memberships_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships 
    DROP CONSTRAINT memberships_pkey;

COMMIT;  

