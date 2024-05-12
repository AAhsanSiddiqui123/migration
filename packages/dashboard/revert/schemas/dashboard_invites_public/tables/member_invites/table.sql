-- Revert: schemas/dashboard_invites_public/tables/member_invites/table from pg

BEGIN;
DROP TABLE "dashboard_invites_public".member_invites;
COMMIT;  

