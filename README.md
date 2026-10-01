# Greet User Docker Action

Cette action Docker salue un utilisateur avec un message personnalisé et expose le résultat dans la sortie `message`.

## Entrées

| Nom | Description | Obligatoire | Valeur par défaut |
| --- | --- | --- | --- |
| `username` | Nom de l'utilisateur à saluer | Oui | - |
| `greeting` | Message de salutation | Non | `Bonjour` |

## Sorties

| Nom | Description |
| --- | --- |
| `message` | Le message complet de salutation |

## Exemple d'utilisation

```yaml
steps:
  - name: Saluer un utilisateur
    uses: owner/my-custom-action-docker@v1
    with:
      username: Mouna
      greeting: Salut
```

L'action affichera `Salut, Mouna!` et cette même valeur sera disponible dans `steps.<id>.outputs.message`.