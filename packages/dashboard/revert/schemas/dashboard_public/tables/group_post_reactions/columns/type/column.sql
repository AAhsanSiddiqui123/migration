-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions DROP COLUMN type;
COMMIT;  

