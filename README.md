# ft_printf

## Description

`ft_printf` est une implémentation personnalisée et minimaliste de la célèbre fonction `printf` de la bibliothèque standard C. Ce projet fait partie du cursus de l'école 42 et vise à approfondir la compréhension des fonctions variadiques en C, tout en améliorant la gestion de la mémoire, la manipulation des chaînes, et les compétences en développement logiciel structuré.

## Fonctionnalités

Cette version de `printf` prend en charge les conversions suivantes :
- **%c** : Affiche un caractère unique.
- **%s** : Affiche une chaîne de caractères.
- **%p** : Affiche une adresse mémoire en format hexadécimal.
- **%d**/**%i** : Affiche un entier signé en base 10.
- **%u** : Affiche un entier non signé en base 10.
- **%x** : Affiche un entier non signé en base 16 (minuscule).
- **%X** : Affiche un entier non signé en base 16 (majuscule).
- **%%** : Affiche un pourcentage.

## Objectifs pédagogiques

Ce projet met en avant :
- L'utilisation des fonctions variadiques avec `stdarg.h`.
- La gestion des buffers et des sorties.
- La reproduction du comportement d'une fonction standard de la bibliothèque C.
- Le respect des bonnes pratiques de codage dans un projet complexe.

## Installation

Clonez ce repository et compilez le projet en utilisant `Makefile` :

```bash
git clone <URL_DU_REPOSITORY>
cd ft_printf
make
```

## Utilisation

Incluez le fichier d'en-tête dans votre code, puis compilez votre programme avec `libftprintf.a` :

```c
#include "ft_printf.h"

int main()
{
    ft_printf("Hello, %s!\n", "world");
    return (0);
}
```

Compilez avec :
```bash
gcc -Wall -Wextra -Werror main.c libftprintf.a
```

## Structure du projet

```
├── ft_printf.h
├── libft
│   ├── ft_atoi.c
│   ├── ft_bzero.c
│   ├── ft_calloc.c
│   ├── ft_isalnum.c
│   ├── ft_isalpha.c
│   ├── ft_isascii.c
│   ├── .......
│   ├── .......
│   ├── .......
│   ├── .......
│   ├── libft.h
│   └── Makefile
├── Makefile
└── src
    ├── ft_printf.c
    ├── ft_print_hex.c
    ├── ft_print_ptr.c
    ├── ft_utils2.c
    └── ft_utils.c

```

## Auteur

**Nathan** - Étudiant à l'école 42.  
Projet réalisé dans le cadre du cursus **42**.  

---
