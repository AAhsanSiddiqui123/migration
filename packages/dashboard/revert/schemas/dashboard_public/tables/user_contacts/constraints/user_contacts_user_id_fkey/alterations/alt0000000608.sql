-- Revert: schemas/dashboard_public/tables/user_contacts/constraints/user_contacts_user_id_fkey/alterations/alt0000000608 from pg

BEGIN;
COMMENT ON CONSTRAINT user_contacts_user_id_fkey ON "dashboard_public".user_contacts IS NULL;
COMMIT;  

