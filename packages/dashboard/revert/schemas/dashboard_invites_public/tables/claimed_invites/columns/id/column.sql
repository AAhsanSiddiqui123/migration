-- Revert: schemas/dashboard_invites_public/tables/claimed_invites/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".claimed_invites DROP COLUMN id;
COMMIT;  

