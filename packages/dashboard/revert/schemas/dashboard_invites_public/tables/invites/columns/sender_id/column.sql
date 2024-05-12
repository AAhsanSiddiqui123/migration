-- Revert: schemas/dashboard_invites_public/tables/invites/columns/sender_id/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites DROP COLUMN sender_id;
COMMIT;  

