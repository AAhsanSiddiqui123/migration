-- Deploy: schemas/dashboard_public/tables/users/alterations/alt0000000009 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

ALTER TABLE "dashboard_public".users
    DISABLE ROW LEVEL SECURITY;
COMMIT;
