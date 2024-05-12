-- Revert: schemas/dashboard_invites_public/tables/member_claimed_invites/table from pg

BEGIN;
DROP TABLE "dashboard_invites_public".member_claimed_invites;
COMMIT;  

