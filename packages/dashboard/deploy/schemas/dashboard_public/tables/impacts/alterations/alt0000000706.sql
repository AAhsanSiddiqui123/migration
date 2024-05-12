-- Deploy: schemas/dashboard_public/tables/impacts/alterations/alt0000000706 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;

ALTER TABLE "dashboard_public".impacts
    DISABLE ROW LEVEL SECURITY;
COMMIT;
