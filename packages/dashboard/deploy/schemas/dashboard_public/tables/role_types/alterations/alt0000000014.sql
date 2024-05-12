-- Deploy: schemas/dashboard_public/tables/role_types/alterations/alt0000000014 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/role_types/table

BEGIN;

ALTER TABLE "dashboard_public".role_types
    DISABLE ROW LEVEL SECURITY;
COMMIT;
