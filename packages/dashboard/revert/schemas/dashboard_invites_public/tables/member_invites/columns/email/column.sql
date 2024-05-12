-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/email/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites DROP COLUMN email;
COMMIT;  

