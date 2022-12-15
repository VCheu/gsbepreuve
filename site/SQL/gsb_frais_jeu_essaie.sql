USE `gsb`;

TRUNCATE TABLE LigneFraisHorsForfait;

INSERT IGNORE INTO FicheFrais(idVisiteur, mois, nbJustificatifs, montantValide, dateModif, idEtat)
VALUES ('a131', MONTH(NOW() - INTERVAL 1 MONTH), 0, 0, NOW() - INTERVAL 1 MONTH, 'CL');

INSERT INTO LigneFraisHorsForfait (`idVisiteur`, `mois`, `libelle`, `date`, `montant`) VALUES
  (
    'a131',
    MONTH(NOW() - INTERVAL 1 MONTH),
    'Frais Test 1',
    NOW() - INTERVAL 1 MONTH,
    '200'
);


INSERT IGNORE INTO FicheFrais(idVisiteur, mois, nbJustificatifs, montantValide, dateModif, idEtat)
VALUES ('a131', MONTH(NOW() - INTERVAL 2 MONTH), 0, 0, NOW() - INTERVAL 2 MONTH,'CL');

INSERT INTO LigneFraisHorsForfait (`idVisiteur`, `mois`, `libelle`, `date`, `montant`) VALUES (
    'a131',
    MONTH(NOW() - INTERVAL 2 MONTH),
    'Frais Test 2',
    NOW() - INTERVAL 2 MONTH,
    '512'
);
