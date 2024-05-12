-- Deploy: schemas/dashboard_public/tables/posts/columns/id/alterations/alt0000001062 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table
-- requires: schemas/dashboard_public/tables/posts/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".posts 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
