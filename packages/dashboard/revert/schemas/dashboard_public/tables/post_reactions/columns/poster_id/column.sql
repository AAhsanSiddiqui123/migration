-- Revert: schemas/dashboard_public/tables/post_reactions/columns/poster_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions DROP COLUMN poster_id;
COMMIT;  

