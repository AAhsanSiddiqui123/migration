-- Revert: schemas/dashboard_public/tables/post_reactions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions DROP COLUMN id;
COMMIT;  

