-- Revert: schemas/dashboard_invites_public/tables/member_claimed_invites/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_claimed_invites DROP COLUMN entity_id;
COMMIT;  

