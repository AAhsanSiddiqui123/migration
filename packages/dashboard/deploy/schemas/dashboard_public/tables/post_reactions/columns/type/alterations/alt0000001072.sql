-- Deploy: schemas/dashboard_public/tables/post_reactions/columns/type/alterations/alt0000001072 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/columns/type/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".post_reactions.type IS E'different types of reactions';
COMMIT;
