-- Deploy: schemas/dashboard_public/tables/connected_accounts/columns/details/alterations/alt0000000427 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/columns/details/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".connected_accounts.details IS E'Additional profile details extracted from this login method';
COMMIT;
