-- Revert: schemas/dashboard_public/tables/post_reactions/columns/type/alterations/alt0000001072 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".post_reactions.type IS NULL;
COMMIT;  

