-- Revert: schemas/dashboard_memberships_public/tables/group_members/columns/id/alterations/alt0000000337 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_members 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

