-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/invite_valid/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites DROP COLUMN invite_valid;
COMMIT;  

