-- Revert: schemas/dashboard_public/tables/user_messages/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_messages FROM authenticated;
COMMIT;  

