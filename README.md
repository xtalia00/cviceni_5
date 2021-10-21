# Restrikční mapy a transkripční motivy

### Úkol 1 - Double Digest Problem (DDP)
V R naprogramujte funcki pro brute-force algoritmus DDP pro jedno možné uspořádání fragmentů. 
Následně upravte pro všechny možné uspořádání fragmentů.

### Úkol 2 - Partial Digest Problem (PDP)
V R implementujte rekurzivní algoritmus pro PDP podle následujícího pseudokódu:
```
PartialDigestProblem(L)
1 width ← maximální prvek z L
2 Delete(width,L)
3 X ← {0,width}
4 Place(L,X)

Place(L,X)
1   if L je prázdné 
2       output X 
3       return 
4   y ← maximální prvek z L 
5   if (y,X) L 
6       přidej y do X a odstraň délky (y,X) z L 
7       Place(L,X) 
8       odstraň y z X a přidej délky (y,X) do L 
9   if (width-y,X) L 
10      přidej width-y do X a odstraň délky (width-y,X) z L 
11      Place(L,X) 
12      odstraň width-y z X a přidej délky (width-y,X) do L 
13  return
```
Upřesnění: `L = X, Delete(y,L)` vymaže hodnotu `y` z `L`, `(y,X)` je vektor délek mezi hodnotou `y` a všemi hodnotami `X`.

**Nápověda:** Vytvořte externí funkci `Remove()`, která bude z vektoru `L` odstraňovat použité délky.

### Úkol 3 - Brute-force vyhledávání motivu
V R implementujte Brute-force Motif Search algoritmus.
1. Funkce `Score()`
    ```
    Score <- function(Sek, s, L)
   ```
   Vstupy:
   * Sek - soubor sekvencí DNA (např. soubor `seq_skore.fasta`)
   * s - vektor počátečních pozic motivů
   * L - délka motivu
   Výstupy:
   * bestScore - nejlepší skóre
   * blok - blok sekvencí
2. Funkce `NextLeaf()`
    ```NextLeaf(a, L, k)
    1   for i ← L to 1
    2       if ai < k
    3           ai ← ai + 1
    4           return a
    5       ai ← 1
    6   return a
    ```
    Vstupy:
   * a - `rep(1,L)`
   * L - počet sekvencí
   * k - `n - l + 1`
   * n - délka sekvence
   * l - délka motivu
3. Funkce `BFMotifSearch()`
    ```
    1   s ← (1, 1, . . . , 1)
    2   bestScore ← Score(s, DN A)
    3   while forever
    4       s ← NextLeaf(s, t, n −l + 1)
    5       if Score(s, DN A) > bestScore
    6           bestScore ← Score(s, DN A)
    7           bestMotif ← (s1, s2, . . . , st)
    8       if s = (1, 1, . . . , 1)
    9           return bestMotif
    ```
    Vstupy:
   * Sek - soubor sekvencí DNA (např. soubor `seq_motif.fasta`)
   * l - délka motivu
   * t - počet sekvencí
   * n - délka jedné sekvence
4. Funkce `NextVertex()`
    ```
    NextVertex(a, i, L, k)
    1   if i < L
    2       ai+1 ← 1
    3       return (a, i + 1)
    4   else
    5       for j ← L to 1
    6           if aj < k
    7               aj ← aj + 1
    8               return (a, j)
    9   return (a, 0)
    ```
5. Funkce `SimpleMotifSearch()`
    ```
    SimpleMotifSearch(DNA, t, n, l)
    1   s ← (1, . . . , 1)
    2   bestScore ← 0
    3   i ← 1
    4   while i > 0
    5       if i < t
    6           (s, i) ← NextVertex(s, i, t, n − l + 1)
    7       else
    8           if Score(s, DNA) > bestScore
    9               bestScore ← Score(s, DNA)
    10              bestMotif ← (s1, s2, . . . , st)
    11          (s, i) ← NextVertex(s, i, t, n − l + 1)
    12  return bestMotif
    ```
### Stažení podkladů z GitHub
<details>
<summary>Nápověda ke Git</summary>

> * Nastavení editoru
> ```bash
> git config --global core.editor notepad
> ```
> * Nastavení jména a emailu
> ```bash
> git config --global user.name "Zuzana Nova"
> git config --global user.email z.nova@vut.cz
> ```
> * Ověření aktuálního nastavení
> ```bash
> git config --global --list
> ```
>
* Na vlastním GitHub účtu vytvořte kopii (**fork**) zdrojového repozitáře. 
  Otevřete v prohlížeči adresu zdrojového repozitáře. Vpravo nahoře najdete tlačítko <kbd>Fork</kbd> a klikněte na něj.
  
* Naklonujte si repozitář ze svého GitHub účtu do složky s dnešním cvičením.
```bash
git clone <repository address>
```
* V lokálním repozitáři nastavte pomocí terminálu novou vzdálenou adresu (**remote**) na **původní** (vut-mpc-prg) adresu repozitáře (trojúhelníková spolupráce):
```bash
git remote add upstream https://github.com/vut-mpc-prg/cviceni_4.git
```

### Odeslání souborů na GitHub
Vytvořte novou revizi (**commit**) a změny nahrajte na svůj vzdálený repozitář (**push**).
* Nově vytvořený soubor přidejte do revize.
```bash
git add <file_name>
```
* Vytvořte revizi, zadejte zprávu k revizi, uložte a zavřete.
```bash
git commit
```
* Vytvořenou revizi odešlete do svého repozitáře na GitHub.
```bash
git push origin master
```
</details>