-- Revert: schemas/dashboard_public/tables/user_contacts/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_contacts FROM authenticated;
COMMIT;  

