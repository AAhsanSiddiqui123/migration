-- Revert: schemas/dashboard_public/tables/post_reactions/columns/post_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions DROP COLUMN post_id;
COMMIT;  

