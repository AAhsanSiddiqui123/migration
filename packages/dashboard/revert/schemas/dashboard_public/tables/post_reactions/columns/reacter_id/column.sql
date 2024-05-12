-- Revert: schemas/dashboard_public/tables/post_reactions/columns/reacter_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions DROP COLUMN reacter_id;
COMMIT;  

