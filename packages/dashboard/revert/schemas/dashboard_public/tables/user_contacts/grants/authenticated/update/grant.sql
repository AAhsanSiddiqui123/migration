-- Revert: schemas/dashboard_public/tables/user_contacts/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_contacts FROM authenticated;
COMMIT;  

