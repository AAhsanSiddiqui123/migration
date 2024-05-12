-- Revert: schemas/dashboard_invites_public/tables/group_invites/table from pg

BEGIN;
DROP TABLE "dashboard_invites_public".group_invites;
COMMIT;  

