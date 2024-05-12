-- Revert: schemas/dashboard_public/tables/phone_numbers/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".phone_numbers FROM authenticated;
COMMIT;  

