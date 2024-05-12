-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/columns/id/alterations/alt0000000253 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".owner_grants 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

