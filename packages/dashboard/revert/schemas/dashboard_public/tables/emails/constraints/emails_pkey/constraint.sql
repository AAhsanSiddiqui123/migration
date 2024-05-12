-- Revert: schemas/dashboard_public/tables/emails/constraints/emails_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".emails 
    DROP CONSTRAINT emails_pkey;

COMMIT;  

