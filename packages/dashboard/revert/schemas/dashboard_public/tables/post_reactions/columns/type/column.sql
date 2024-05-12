-- Revert: schemas/dashboard_public/tables/post_reactions/columns/type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".post_reactions DROP COLUMN type;
COMMIT;  

