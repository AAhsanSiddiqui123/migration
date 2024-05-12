-- Deploy: schemas/dashboard_public/tables/post_reactions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".post_reactions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
