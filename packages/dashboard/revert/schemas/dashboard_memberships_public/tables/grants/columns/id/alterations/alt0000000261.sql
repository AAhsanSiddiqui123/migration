-- Revert: schemas/dashboard_memberships_public/tables/grants/columns/id/alterations/alt0000000261 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".grants 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

