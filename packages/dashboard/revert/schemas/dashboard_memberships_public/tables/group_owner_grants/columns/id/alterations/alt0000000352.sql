-- Revert: schemas/dashboard_memberships_public/tables/group_owner_grants/columns/id/alterations/alt0000000352 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_owner_grants 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

