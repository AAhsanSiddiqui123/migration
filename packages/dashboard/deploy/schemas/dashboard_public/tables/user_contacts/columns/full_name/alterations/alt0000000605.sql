-- Deploy: schemas/dashboard_public/tables/user_contacts/columns/full_name/alterations/alt0000000605 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table
-- requires: schemas/dashboard_public/tables/user_contacts/columns/full_name/column

BEGIN;
ALTER TABLE "dashboard_public".user_contacts ADD CONSTRAINT user_contacts_full_name_chk CHECK (character_length(full_name) <= 120);
COMMIT;
