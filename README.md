# 🛠️ Pipeline CI/CD Python + Docker avec GitHub Actions

Ce projet est un exemple d'intégration continue (CI) simple en Python.  
Il intègre des tests unitaires, une vérification de qualité du code avec `pylint`, et un build d'image Docker exécutant les tests automatiquement.

---

## 📁 Contenu du projet

- `simple_math.py` : contient une classe `SimpleMath` avec des fonctions `addition` et `soustraction`.
- `test_simple_math.py` : contient des tests unitaires avec `unittest`.
- `.github/workflows/python-app.yml` : le pipeline GitHub Actions.

---

## ⚙️ Fonctionnalités CI/CD

Le workflow GitHub Actions effectue automatiquement à chaque `push` :

1. ✅ **Exécution des tests unitaires**
2. ✅ **Analyse statique du code avec `pylint`**
3. ✅ **Build d'un conteneur Docker**
4. ✅ **Exécution des tests dans le conteneur**

---

## 🐛 Erreurs rencontrées et solutions

| Erreur | Cause | Solution |
|-------|-------|----------|
| `IndentationError` | Mauvaise indentation dans la fonction de test | Corrigé en indentant correctement après `def` |
| `@stacticmethod` | Faute de frappe (`stacticmethod`) | Corrigé en écrivant `@staticmethod` |
| `pylint exit code 16` | Manque de docstrings dans les classes/fonctions | Ajout de commentaires de documentation |
| `Trailing newlines` | Trop de lignes vides à la fin du fichier | Supprimées pour satisfaire `pylint` |
| `git push` erreur d'authentification | GitHub ne supporte plus les mots de passe | Utilisation de HTTPS avec token ou SSH recommandé |
| `fatal: No configured push destination` | Pas de remote GitHub configuré | Fixé avec `git remote add origin <url>` |

---

## 🐳 Docker

Une image Docker est construite automatiquement dans le pipeline.  
Lorsqu'on exécute le conteneur, les tests unitaires sont automatiquement lancés grâce à la directive :

```Dockerfile
CMD ["python3", "test_simple_math.py"]

![CI](https://github.com/Hamdoune001/pipeline_ci_cd/actions/workflows/python-app.yml/badge.svg)
