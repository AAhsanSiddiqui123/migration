-- Deploy: schemas/dashboard_public/tables/connected_accounts/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/table

BEGIN;

ALTER TABLE "dashboard_public".connected_accounts
    ENABLE ROW LEVEL SECURITY;
COMMIT;
