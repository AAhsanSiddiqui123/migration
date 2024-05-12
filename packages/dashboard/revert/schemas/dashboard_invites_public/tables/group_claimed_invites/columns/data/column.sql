-- Revert: schemas/dashboard_invites_public/tables/group_claimed_invites/columns/data/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_claimed_invites DROP COLUMN data;
COMMIT;  

