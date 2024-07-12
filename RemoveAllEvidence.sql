-- Sélectionner la base de données SuperMoney
USE SuperMoney;
GO

-- Sauvegarder la base de données SuperMoney
BACKUP DATABASE SuperMoney
TO DISK = 'SuperMoney.bak'
WITH FORMAT,
     MEDIANAME = 'SQLServerBackups',
     NAME = 'Full Backup of SuperMoney';
GO

-- Sélectionner tous les enregistrements de la table logs
SELECT *
FROM logs;
GO

-- Début de la transaction
BEGIN TRANSACTION;
GO

-- Supprimer les enregistrements où l'utilisateur est 'hack3r'
DELETE FROM logs
WHERE [user] = 'hack3r';
GO

-- Sélectionner tous les enregistrements de la table logs après la suppression
SELECT *
FROM logs;
GO

-- Supprimer les 3 premiers enregistrements de la table logs
DELETE TOP(3)
FROM logs;
GO

-- Sélectionner tous les enregistrements de la table logs après la suppression
SELECT *
FROM logs;
GO

-- Valider la transaction
COMMIT;
GO
