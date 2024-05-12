-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/columns/granted/alterations/alt0000000332 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_memberships 
    ALTER COLUMN granted DROP DEFAULT;

COMMIT;  

