INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (4, 'LOCATION', 'Location', null, 'admin', '2020-02-06 20:04:48.187000', null, null, true, 4);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (6, 'CA_TTC', 'CA TTC', null, 'admin', '2020-02-06 20:04:53.978000', null, null, true, 6);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (2, 'ACHAT_HT', 'Achat HT', null, 'admin', '2020-02-06 20:04:43.001000', null, null, true, 2);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (1, 'CA_HT', 'CA HT', '', 'admin', '2020-02-06 20:04:33.389000', null, null, true, 1);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (3, 'SALAIRE_BRUT', 'Salaire Brut', null, 'admin', '2020-02-06 20:04:45.647000', null, null, true, 3);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (5, 'HONORAIRE', 'Honoraire', null, 'admin', '2020-02-06 20:04:50.634000', null, null, true, 5);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (7, 'SI', 'Sock Initiale', null, 'admin', '2020-02-06 20:06:14.742000', null, null, false, 6);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (8, 'SF', 'Stock Final', null, 'admin', '2020-02-06 20:06:47.351000', null, null, false, 7);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (9, 'BALANCE_COMPTE', 'Résultat Comptable', null, 'admin', '2020-02-06 20:08:24.431000', null, null, false, 8);
INSERT INTO public.impot_annuel (id, code, libelle, description, created_by, created_date, last_modified_by, last_modified_date, calcule, tri_ordre) VALUES (10, 'BALANCE_FISCALE', 'Résultat Fiscale', null, 'admin', '2020-02-06 20:08:55.773000', null, null, false, 9);

INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (1, 1, 7111, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (2, 1, 7112, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (3, 1, 7110, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (4, 2, 7117, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (5, 2, 7118, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (6, 2, 7116, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (7, 3, 7107, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (8, 3, 7108, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (11, 5, 7104, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (12, 6, 17001, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (13, 6, 17002, 1, 'admin', null, null, null);
INSERT INTO public.impot_annuel_detail (id, impot_annuel_id, impot_mensuel_detail_id, coefficient, created_by, created_date, last_modified_by, last_modified_date) VALUES (9, 4, 7102, 1, 'admin', null, null, null);
