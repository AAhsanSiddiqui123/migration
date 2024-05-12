-- Deploy: schemas/dashboard_public/tables/post_reactions/constraints/post_reactions_reacter_id_fkey/alterations/alt0000001073 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/constraints/post_reactions_reacter_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT post_reactions_reacter_id_fkey ON "dashboard_public".post_reactions IS E'@omit manyToMany';
COMMIT;
