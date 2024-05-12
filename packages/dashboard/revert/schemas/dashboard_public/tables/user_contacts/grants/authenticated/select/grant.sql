-- Revert: schemas/dashboard_public/tables/user_contacts/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_contacts FROM authenticated;
COMMIT;  

