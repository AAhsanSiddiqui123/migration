-- Revert: schemas/dashboard_public/tables/phone_numbers/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( cc, number, owner_id, is_primary ) ON TABLE "dashboard_public".phone_numbers FROM authenticated;
COMMIT;  

