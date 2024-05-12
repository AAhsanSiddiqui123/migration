-- Revert: schemas/dashboard_public/tables/user_answers/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_answers FROM authenticated;
COMMIT;  

