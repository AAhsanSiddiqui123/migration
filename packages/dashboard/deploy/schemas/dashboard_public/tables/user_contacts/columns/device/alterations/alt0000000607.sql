-- Deploy: schemas/dashboard_public/tables/user_contacts/columns/device/alterations/alt0000000607 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/columns/device/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_contacts.device IS E'originating device type or id';
COMMIT;
