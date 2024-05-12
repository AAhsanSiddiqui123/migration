-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/sender_id/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites DROP COLUMN sender_id;
COMMIT;  

