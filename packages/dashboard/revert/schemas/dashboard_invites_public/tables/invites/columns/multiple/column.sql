-- Revert: schemas/dashboard_invites_public/tables/invites/columns/multiple/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites DROP COLUMN multiple;
COMMIT;  

