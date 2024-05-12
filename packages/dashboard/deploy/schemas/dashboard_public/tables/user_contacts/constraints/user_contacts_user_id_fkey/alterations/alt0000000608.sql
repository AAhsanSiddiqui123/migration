-- Deploy: schemas/dashboard_public/tables/user_contacts/constraints/user_contacts_user_id_fkey/alterations/alt0000000608 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/constraints/user_contacts_user_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_contacts_user_id_fkey ON "dashboard_public".user_contacts IS NULL;
COMMIT;
