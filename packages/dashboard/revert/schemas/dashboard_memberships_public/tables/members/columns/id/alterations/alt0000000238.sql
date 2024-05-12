-- Revert: schemas/dashboard_memberships_public/tables/members/columns/id/alterations/alt0000000238 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".members 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

