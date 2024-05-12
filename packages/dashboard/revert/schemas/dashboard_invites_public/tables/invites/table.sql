-- Revert: schemas/dashboard_invites_public/tables/invites/table from pg

BEGIN;
DROP TABLE "dashboard_invites_public".invites;
COMMIT;  

