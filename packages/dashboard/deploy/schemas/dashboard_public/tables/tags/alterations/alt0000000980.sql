-- Deploy: schemas/dashboard_public/tables/tags/alterations/alt0000000980 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tags/table

BEGIN;

ALTER TABLE "dashboard_public".tags
    DISABLE ROW LEVEL SECURITY;
COMMIT;
