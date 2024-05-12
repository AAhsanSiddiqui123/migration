-- Deploy: schemas/dashboard_public/tables/users/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

ALTER TABLE "dashboard_public".users
    ENABLE ROW LEVEL SECURITY;
COMMIT;
