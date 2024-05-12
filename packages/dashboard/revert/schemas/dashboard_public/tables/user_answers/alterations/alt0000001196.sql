-- Revert: schemas/dashboard_public/tables/user_answers/alterations/alt0000001196 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

