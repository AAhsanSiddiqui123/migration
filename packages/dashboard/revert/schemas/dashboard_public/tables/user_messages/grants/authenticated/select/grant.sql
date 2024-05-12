-- Revert: schemas/dashboard_public/tables/user_messages/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_messages FROM authenticated;
COMMIT;  

