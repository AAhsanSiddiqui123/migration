-- Revert: schemas/dashboard_invites_public/tables/invites/columns/email/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites DROP COLUMN email;
COMMIT;  

