-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/invite_limit/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites DROP COLUMN invite_limit;
COMMIT;  

