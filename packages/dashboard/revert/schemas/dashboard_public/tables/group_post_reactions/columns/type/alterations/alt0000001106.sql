-- Revert: schemas/dashboard_public/tables/group_post_reactions/columns/type/alterations/alt0000001106 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".group_post_reactions.type IS NULL;
COMMIT;  

