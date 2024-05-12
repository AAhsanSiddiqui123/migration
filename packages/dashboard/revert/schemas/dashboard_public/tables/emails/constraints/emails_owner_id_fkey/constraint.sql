-- Revert: schemas/dashboard_public/tables/emails/constraints/emails_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".emails 
    DROP CONSTRAINT emails_owner_id_fkey;

COMMIT;  

