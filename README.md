# Projet LAMP - Automatisation du déploiement

## Description
Ce projet met en place un serveur **LAMP (Linux, Apache, MariaDB, PHP)** sur une VM Debian 12,
avec une double approche :
- **Script Bash** pour une installation rapide et reproductible.
- **Playbook Ansible** pour une gestion en mode Infrastructure as Code.

## Étapes principales
1. Mise à jour du système et installation des paquets nécessaires (Apache2, PHP, MariaDB...).
2. Activation et démarrage des services `apache2` et `mariadb`.
3. Déploiement d’un fichier `info.php` permettant de tester la configuration PHP.
4. Vérifications via :
   - `systemctl status apache2`
   - `systemctl status mariadb`
   - `http://[IP_VM]/info.php`

## Structure du projet
```
lamp-project/
│── install_lamp.sh        # Script Bash d’installation
│── ansible/
│   ├── hosts              # Fichier d’inventaire Ansible
│   └── lamp.yml           # Playbook Ansible de déploiement
```

## Plus-value
- Automatisation complète (plus besoin d’installer manuellement).
- Reproductibilité de l’environnement.
- Fiabilité grâce aux vérifications intégrées.
- Extensible pour héberger des CMS (WordPress, Drupal) ou des applications métier.

## Exécution
### Script Bash
```bash
chmod +x install_lamp.sh
sudo ./install_lamp.sh
```

### Ansible Playbook
```bash
ansible-playbook -i ansible/hosts ansible/lamp.yml --ask-become-pass
```
