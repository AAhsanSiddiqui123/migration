-- Deploy: schemas/dashboard_public/tables/user_connections/alterations/alt0000000609 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_connections/table

BEGIN;

ALTER TABLE "dashboard_public".user_connections
    DISABLE ROW LEVEL SECURITY;
COMMIT;
