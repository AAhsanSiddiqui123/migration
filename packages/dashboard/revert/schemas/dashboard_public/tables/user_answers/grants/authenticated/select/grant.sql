-- Revert: schemas/dashboard_public/tables/user_answers/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".user_answers FROM authenticated;
COMMIT;  

