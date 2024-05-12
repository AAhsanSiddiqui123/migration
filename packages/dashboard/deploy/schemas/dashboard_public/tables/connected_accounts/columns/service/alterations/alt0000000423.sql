-- Deploy: schemas/dashboard_public/tables/connected_accounts/columns/service/alterations/alt0000000423 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/connected_accounts/columns/service/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".connected_accounts.service IS E'The service used, e.g. `twitter` or `github`.';
COMMIT;
