-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/group_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".group_post_reactions DROP COLUMN group_id;
COMMIT;  

