-- Revert: schemas/dashboard_public/tables/user_messages/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_messages FROM authenticated;
COMMIT;  

