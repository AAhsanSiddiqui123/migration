-- Deploy: schemas/dashboard_public/tables/post_reactions/alterations/alt0000001067 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".post_reactions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
