-- Revert: schemas/dashboard_public/tables/user_contacts/constraints/user_contacts_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts 
    DROP CONSTRAINT user_contacts_pkey;

COMMIT;  

