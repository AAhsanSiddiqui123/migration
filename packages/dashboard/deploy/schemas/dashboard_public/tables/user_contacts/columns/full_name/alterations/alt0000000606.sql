-- Deploy: schemas/dashboard_public/tables/user_contacts/columns/full_name/alterations/alt0000000606 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/columns/full_name/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_contacts.full_name IS E'full name of the person or business';
COMMIT;
