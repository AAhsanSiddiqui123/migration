-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/multiple/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites DROP COLUMN multiple;
COMMIT;  

