-- Revert: schemas/dashboard_public/tables/phone_numbers/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".phone_numbers FROM authenticated;
COMMIT;  

