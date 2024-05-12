-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/reacter_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions DROP COLUMN reacter_id;
COMMIT;  

