-- Revert: schemas/dashboard_invites_public/tables/claimed_invites/table from pg

BEGIN;
DROP TABLE "dashboard_invites_public".claimed_invites;
COMMIT;  

