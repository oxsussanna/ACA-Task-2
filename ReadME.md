# 			Αρχιτεκτονική Υπολογιστών

### 							Χειμερινό εξάμηνο 2019/2020

### Τμήμα Ηλεκτρολόγων Μηχανικών και Μηχανικών Υπολογιστών

### 				Αριστοτέλειο Πανεπιστήμιο *Θεσσαλονίκης* 





### 							<u>2η Εργαστητριακή άσκηση</u>

#### Design Space Exploration με τον gem5



##### Mόρσυ Χρήστος Αδάμ ΑΕΜ:8363

##### Πέννας Παναγιώτης Γεώργιος ΑΕΜ: 9016







Αφού κάναμε εγκατάσταση τα δοθέντα benchmarks και κάναμε make στους αντίστοιχους φακέλους τρέξαμε ένα ένα τα προγράμματα που μας ζητήθηκαν. Σε αυτό το σημείο πρέπει να τονιστεί ότι by default τα αρχεία ήταν στα 2GHz κάτι που μας ζητείται στο τρίτο ερώτημα. Για το λόγο αυτό εκτελώντας την εντολή --cpu-clock=1GHz  αρχικοποιήσαμε τις συνθήκες για την απάντηση των πρώτων ερωτημάτων. 



### Ερωτήματα Δεύτερου Μέρους:

Βήμα 1ο:

###### 1.Ανατρέχοντας στα αρχεία εξόδου stats.txt, config.ini και config.json που προέκυψαν από την εκτέλεση του κάθε benchmark παραθέτουμε μεγέθη των caches.  





#### Τα αποτελέσματα για την *instruction-cache* (**icache**) είναι:

- <u>Associativity</u> = 2-way Set-Associative

- <u>cache size</u> = 32kb

- <u>cache_line</u>  = 64bytes

**config.ini** :

> [system.cpu.icache.tags.indexing_policy]
>
> type=SetAssociative							 
>
>  entry_size=64 
>
> eventq_index=0
>
> size=32768											

> [system]
>
> cache_line_size=64

**config.json** :

> "indexing_policy": {
>                             "name": "indexing_policy", 
>                             "eventq_index": 0, 
>                             "assoc": 2, 
>                             "cxx_class": "SetAssociative", 
>                             "path": "system.cpu.icache.tags.indexing_policy", 
>                             "entry_size": 64, 
>                             "type": "SetAssociative", 
>                             "size": 32768
>                         }, 

> "system":
>
> "cache_line_size": 64





#### Τα αποτελέσματα για την *data-cache* (**dcache**) είναι:

- <u>Associativity</u> = 2-way Set-Associative

- <u>cache size</u> = 65kb

- <u>cache_line</u>  = 64bytes

**config.ini** :

> [system.cpu.dcache.tags.indexing_policy] 
>
> type=SetAssociative 
>
> assoc=2 
>
> entry_size=64 
>
> eventq_index=0 
>
> size=65536											



**config.json** :

> "indexing_policy": {
>                             "name": "indexing_policy", 
>                             "eventq_index": 0, 
>                             "assoc": 2, 
>                             "cxx_class": "SetAssociative", 
>                             "path": "system.cpu.dcache.tags.indexing_policy", 
>                             "entry_size": 64, 
>                             "type": "SetAssociative", 
>                             "size": 65536
>                         }, 



#### Τα αποτελέσματα για την **L2 cache** είναι:

- <u>Associativity</u> = 8-way Set-Associative 

- <u>cache size</u> = 2Mb

- <u>cache_line</u>  = 64bytes

**config.ini** :

> [system.l2.tags.indexing_policy] 
>
> type=SetAssociative 
>
> assoc=8 
>
> entry_size=64 
>
> eventq_index=0 
>
> size=2097152											



**config.json** :

> "indexing_policy": {
>                     "name": "indexing_policy", 
>                     "eventq_index": 0, 
>                     "assoc": 8, 
>                     "cxx_class": "SetAssociative", 
>                     "path": "system.l2.tags.indexing_policy", 
>                     "entry_size": 64, 
>                     "type": "SetAssociative", 
>                     "size": 2097152
>                 }







2. Ακολουθώντας τις οδηγίες για το δεύτερο ερώτημα παρουσιάζουμε τα εξής αποτελέσματα:



| **Benchmarks** | sim_seconds | system.cpu.cpi | icache_miss_rate | dcache_miss_rate | l2_miss_rate |
| -------------- | ----------- | -------------- | ---------------- | ---------------- | ------------ |
| specbzip       | 0.161337    | 1.613367       | 0.000074         | 0.014683         | 0.281702     |
| specmcf        | 0.109125    | 1.091249       | 0.000037         | 0.002051         | 0.724040     |
| speclibm       | 0.262355    | 2.623555       | 0.000099         | 0.060971         | 0.999927     |
| specsjeng      | 0.704063    | 7.040633       | 0.000020         | 0.121829         | 0.999979     |
| spechmmer      | 0.118453    | 1.184534       | 0.000205         | 0.001638         | 0.082233     |





Tα ζητούμενα γραφήματα:





![Seconds](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/Seconds.jpeg)



![CPI](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/CPI.jpeg)



![icache](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/icache.jpeg)

![dcache](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/dcache.jpeg)

![L2](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/L2.jpeg)



3. Tα αποτελέσματα των benchmarks για συχότητα 2Ghz είναι:



| **Benchmarks** | sim_seconds | system.cpu.cpi | icache_miss_rate | dcache_miss_rate | l2_miss_rate |
| -------------- | ----------- | -------------- | ---------------- | ---------------- | ------------ |
| specbzip       | 0.084159    | 1.683172       | 0.000074         | 0.014840         | 0.281708     |
| specmcf        | 0.055477    | 1.109538       | 0.000037         | 0.002051         | 0.724040     |
| speclibm       | 0.174681    | 3.493611       | 0.000099         | 0.060971         | 0.999927     |
| specsjeng      | 0.513541    | 10.270810      | 0.000020         | 0.121829         | 0.999979     |
| spechmmer      | 0.059368    | 1.187362       | 0.000205         | 0.001645         | 0.082246     |





Το ρολόι δεν δουλεύει με την ίδια συχνότητα για όλες τις συσκευές ενός υπολογιστικού συστήματος. Συνήθως το ρολόι που απευθύνεται στον επεξεργαστή είναι χρονισμένο σε υψηλότερες συχνότητες από ότι για παράδειγμα το ρολόι της μνήμης. Αυτό συμβαίνει γιατί ο επεξεργαστής λειτουργεί ταχύτερα από ότι η μνήμη.  Ωστόσο, υπάρχει το μειονέκτημα πως όταν η ΚΜΕ αλληλεπιδρά με τις υπόλοιπες συσκευές περιμένει την απάντησή τους και τίθεται σε αδράνεια, χάνοντας έτσι επεξεργαστικούς κύκλους.



![.](https://i.stack.imgur.com/dtFUj.png)



 Τα τμήματα της CPU βρίσκονται στο σύστημα.cpu_clk_domain, ενώ τα τμήματα του συστήματος βρίσκονται στο σύστημα.clk_domain. Επιπλέον, από την εικόνα καταλαβαίνουμε ότι η κύρια μνήμη και η L2 cache δεν είναι μέρος της CPU, αλλά η L2 cache έχει δυνατότητα επικοινωνίας τόσο με την κύρια μνήμη όσο και με τη CPU. Στην περίπτωσή μας με την εντολή --cpu--clock=2GHz το system.clk_domain διατηρήθηκε στα 1000 ticks ενώ αντίθετα το system.cpu_clk_domain μεταβλήθηκε στα 500 για 2GHz. Σε περίπτωση προσθήκης επιπλέον επεξεργαστή αυτός θα αποκτούσε τη συχνότητα με τη CPU clock. Με την σύγκριση για 1GHz και 2 GHz αντίστοιχα αντιλαμβανόμαστε ότι έχουμε μείωση των sim_seconds και πιο συγκεκριμένα για μικρές τιμές του L2_miss_rate έχουμε μέχρι και υποδιπλασιασμό. Το scaling επηρρεάζεται από την Last Level Cache δηλαδή την L2. Για τον λόγο αυτό στις περιπτώσεις όπου το L2_miss_rate είναι σχεδόν 1 παρατηρούμε ότι τα CPI είναι αρκετά μεγάλα.





Βήμα 2ο:

1.Για να κάνουμε CPI optimization σε κάθε benchmark αποφασίσαμε να ακολουθήσουμε μια χρονοβόρα διαδικασία. Πιο συγκεκριμένα, για κάθε ένα από τα benchmark μεταβάλαμε κάθε φορά μια παράμετρο διατηρώντας για τις επόμενες εκτελέσεις εκείνη που μας έδινε κάθε φορά την πλησιέστερη στη μονάδα CPI. Κατά σειρά οι παράμετροι που μεταβλήθηκαν ήταν:

 --cpu-clock=1 GHz

--l1d_size=16,32,64,128 kB

 --l1d_assoc=2,4,8,16 

 --l1i_size=16,32,64,128 kB 

--l1i_assoc=2,4,8,16 

--l2_size=1,2,4 ΜΒ

 --l2_assoc=2,4,8,16 

--cacheline_size=32,64,128,256,512,1024,2048 

Τα αποτελέσματα που προέκυψαν από τις εκτελέσεις φαίνονται τόσο σε σχετικά διαγράμματα όσο και στους αντίστοιχους φακέλους. Για τον περιορισμό των εκτελέσεων και την ελαχιστοποιήση των πιθανών συνδυασμών θα μπορούσαμε εξαρχής να επικεντρωθούμε σε εκείνες τις παραμέτρους που θα μεταβάλουνν τις αντίστοιχες υψηλές τιμές των miss rates στα επίπεδα των cache για κάθε benchmark. Αξίζει να σημειωθεί οτι η μελέτη των miss rates θα πρέπει να γίνεται συγκριτικά με τα data accesses σε κάθε περίπτωση. Επιλέξαμε όμως αυτόν τον τρόπο τόσο για μεγαλύτερη εξοικείωσή μας με τον προσομοιωτή και τη μελέτη μεταβολής των αποτελεσμάτων σε αλλαγή κάθε παραμέτρου όσο και στη καλύτερη προσέγγιση της μέγιστης απόδοσης. 



2.Μετά τον πειραματισμό που προαναφέραμε καταλήξαμε στα εξής αποτελέσματα ως προς την επίδραση κάθε παράγοντα στην απόδοση των benchmarks:



![L1d_size](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/L1d_size.png)

| **CPI/L1d_size** | 16       | 32       | 64       | 128      |
| ---------------- | -------- | -------- | -------- | -------- |
| **bzip**         | 1.673921 | 1.640521 | 1.613367 | 1.584902 |
| **mcf**          | 1.097587 | 1.093470 | 1.091249 | 1.090286 |
| **libm**         | 2.623218 | 2.623555 | 2.623555 | 2.623555 |
| **sjeng**        | 7.040633 | 7.040633 | 7.040633 | 7.040616 |
| **hmmer**        | 1.190107 | 1.188007 | 1.184534 | 1.182812 |





![L1d_assoc](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/L1d_assoc.png)

| **CPI/L1d_assoc** | 2        | 4        | 8        | 16       |
| ----------------- | -------- | -------- | -------- | -------- |
| **bzip**          | 1.584902 | 1.577548 | 1.569831 | 1.568276 |
| **mcf**           | 1.090286 | 1.089741 | 1.089741 | 1.089585 |
| **libm**          | 2.623218 | 2.623218 | 2.623555 | 2.623555 |
| **sjeng**         | 7.040616 | 7.040561 | 7.040625 | 7.040625 |
| **hmmer**         | 1.182812 | 1.182383 | 1.181913 | 1.181960 |



![L1i_size](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/L1isize.png)

| **CPI/L1i_size** | 16       | 32       | 64       | 128      |
| ---------------- | -------- | -------- | -------- | -------- |
| **bzip**         | 1.568114 | 1.568276 | 1.568404 | 1.568365 |
| **mcf**          | 1.467782 | 1.089585 | 1.089584 | 1.089584 |
| **libm**         | 2.623140 | 2.623218 | 2.623555 | 2.623555 |
| **sjeng**        | 7.040633 | 7.040561 | 7.040609 | 7.040555 |
| **hmmer**        | 1.183279 | 1.181913 | 1.181711 | 1.181649 |



![L1i_assoc](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/L1iassoc.png)

| **CPI/L1i_assoc** | 2        | 4        | 8        | 16       |
| ----------------- | -------- | -------- | -------- | -------- |
| **bzip**          | 1.568114 | 1.568342 | 1.568405 | 1.568326 |
| **mcf**           | 1.089584 | 1.089506 | 1.089584 | 1.089584 |
| **libm**          | 2.623140 | 2.623243 | 2.623218 | 2.623555 |
| **sjeng**         | 7.040555 | 7.040555 | 7.040555 | 7.040555 |
| **hmmer**         | 1.181649 | 1.181642 | 1.181634 | 1.181634 |



![L2_size](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/L2size.png)

| *CPI/L2_size* | 1        | 2        | 4        |
| ------------- | -------- | -------- | -------- |
| **bzip**      | 1.585425 | 1.568114 | 1.554389 |
| **mcf**       | 1.091886 | 1.089506 | 1.089442 |
| **libm**      | 2.624255 | 2.623140 | 2.621063 |
| **sjeng**     | 7.041129 | 7.040555 | 7.039293 |
| **hmmer**     | 1.181634 | 1.181634 | 1.181634 |



![L2_assoc](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/L2assoc.png)

| *CPI/L2_assoc* | 2        | 4        | 8        | 16       |
| -------------- | -------- | -------- | -------- | -------- |
| **bzip**       | 1.555870 | 1.554706 | 1.554389 | 1.554015 |
| **mcf**        | 1.089442 | 1.089442 | 1.089442 | 1.089442 |
| **libm**       | 2.620882 | 2.620882 | 2.621063 | 2.621063 |
| **sjeng**      | 7.038433 | 7.041793 | 7.039293 | 7.039716 |
| **hmmer**      | 1.181634 | 1.181634 | 1.181634 | 1.181634 |



![cacheline](https://github.com/oxsussanna/ACA-Task-2/blob/master/Bars%20and%20Charts/cacheline.png)

| **CPI/cache_line** | 32        | 64       | 128      | 256      | 512      | 1024     | 2048     |
| ------------------ | --------- | -------- | -------- | -------- | -------- | -------- | -------- |
| **bzip**           | 1.654556  | 1.554015 | 1.547695 | 1.542781 | 1.562457 | 1.620648 | 1.725462 |
| **mcf**            | 1.116286  | 1.089442 | 1.071209 | 1.066521 | 1.062525 | 1.126004 | 1.268074 |
| **libm**           | 3.920248  | 2.620882 | 1.989125 | 1.653876 | 1.491659 | 1.448800 | 1.374752 |
| **sjeng**          | 11.655294 | 7.038433 | 4.972729 | 3.714676 | 3.070672 | 2.753664 | 2.636326 |
| **hmmer**          | 1.186414  | 1.181642 | 1.179182 | 1.178068 | 1.177334 | 1.177413 | 1.178172 |





Τελικά o πίνακας με τις μεταβλητές που μας δίνουν το καλύτερο CPI για κάθε benchmark είναι:



| Benchmarks/CPI | L1d_size | L1d_assoc | L1i_size | L1i_assoc | L2_size | L2_assoc | cacheline_size |
| -------------- | -------- | --------- | -------- | --------- | ------- | -------- | -------------- |
| bzip           | 128kB    | 16        | 16kB     | 2         | 4MB     | 16       | 256kB          |
| mcf            | 128kB    | 16        | 64kB     | 2         | 4MB     | 2        | 512KB          |
| libm           | 16kB     | 2         | 16kB     | 2         | 4MB     | 2        | 2048kB         |
| sjeng          | 128kB    | 4         | 128kB    | 2         | 4MB     | 2        | 2048kB         |
| hmmer          | 128kB    | 8         | 128kB    | 8         | 1MB     | 2        | 512kB          |





- Specbzip

Για να επιτύχουμε τη βέλτιστη CPI μειώνουμε το μέγεθος της L1i_size (από 32 σε 16) καθώς το μικρό ποσοστό αστοχίας (0.000074) έχει μικρή επίπτωση ενώ αντίστοιχα το L1i_assoc παραμένει σταθερό. Για τη μείωση των αρκετά υψηλότερων miss rates (0.014683,0.281702) των L1d και L2 αντίστοιχα είναι λογική η αύξηση τόσο των μεγεθών τους (από 65 σε 128 και από 2 σε 4) όσο και της συσχετικότητας τους (από 8 σε 16),αν και όπως μας είναι γνωστό η συσχετικότες ανώ των 8-set έχουν μικρή επιρροή στη μείωση της CPI. Τέλος, βλέπουμε την αύξηση του cache_line_size (από 64 σε 256) να παίζει σημαντικό ρόλο στη βελτιστοποιήση της CPI, εφόσον μειώνει σημαντικά το ρυθμό αστοχίας.

- Specmcf


Παρατηρούμε οτι λόγω της μικρής τιμής της CPI η αλλαγή των παραμέτρων δεν έφερε σημαντική μείωσή του. Και σε αυτή την περίπτωση το miss rate της L2 είναι μεγάλο άρα η αύξησή της (από 2 σε 4) βελτιστοποιήσε έστω και ελάχιστα. Παράλληλα, αυξήθηκαν και τα μεγέθη του πρώτου επιπέδου μνήμης (από 65 σε 128 για την Ld και από 32 σε 64 για την Li) όπως και της cache_line_size από 64 σε 512.

- speclibm


Στη συγκεκριμένη περίπτωση τόσο τo miss rate της L1d (0.060971) όσο και της L2 (0.999927) έχουν ως αποτέλεσμα ένα αρχικά αυξημένο CPI. Η αλλαγές των παραμέτρων έφεραν μια σημαντική βελτίστοποίηση με τη μεταβολή του cache_line_size, όπως φαίνεται και από το αντίστοιχο διάγραμμα να έχει την πιο σημαντική επιρροή.

- specsjeng


Αν και για την ελαχιστοποιήση του συγκεκριμένου benchmark χρειάστηκε να χρησιμοποιήσουμε μια cache line μεγέθους 2048, η μεταβολή των υπόλοιπων παραμέτρων δεν επηρέασε σημαντικά το τελικό αποτέλεσμα. Αξίζει να σημειωθεί ότι η αύξηση του block μειώνει τον αριθμό των υποχρεωτικών αστοχιών. Η μείωση της τοπικότητας αφορά δυο κατηγορίες: τη χρονική τοπικότητα (temporal locality) και τη χωρική τοπικότητα (spatial locality). Τα blocks που έχουν μεγαλύτερο μέγεθος αξιοποιούν τη χωρική τοπικότητα. Διαπιστώνουμε με αυτόν τον τρόπο την αναγκαιότητα για για χωρική τοπικότητα.

- spechmmer


Τέλος, από τα διαγράμματα παρατηρούμε την επιρροή της  L1i_size στη CPI κάτι φυσιολογικό αν παρατηρήσουμε τo miss rate με τις default τιμές που είναι υψηλό σε σχέση με τις άλλες περιπτώσεις. Για το λόγο αυτό το μέγεθος της L1i αλλάζει στα 128. Εντύπωση επίσης προκαλεί η μικρή τιμή L2 miss rate που είναι αρκετά μικρή σε σχέση με άλλες περιπτώσεις, και για το λόγω αυτό προτιμούμε μέγεθος 1Mb.





Βήμα 3ο:



Στο παραπάνω ερώτημα επιγκεντρωθήκαμε στην εύρεση της βέλτιστης και ιδανικής για κάθε benchmark μνήμη. Σειρά τώρα έχει η τομή ποιότητας (απόδοσης) και κόστους. Αν και μέχρι τώρα σε κάποιες περιπτώσεις που τα CPI μετά από αλλαγή μιας παραμέτρου έμειναν αμετάβλητα κρατούσαμε την πιο συμφέρουσα τιμή στο συγκεκριμένο ερώτημα θα προσπαθήσουμε να συνδυάσουμε την απόδοση κάθε παραμέτρου με το κόστος της. 



Για την πραγματική μελέτη θα κάνουμε χρήση cacheline_size για τιμές 32,64,128 σε αντίθεση με το δεύτερο ερώτημα που χρησιμοποιήσαμε ακραίες τιμές για να δείξουμε την αναγκαιότητα της τοπικότητας(locality). 

Για την εύρεση της συνάρτησης κόστους λάβαμε υπ' όψιν τις εξής παραμέτρους :

- Το κόστος μεταβάλλεται με την επιλογή CPU model (στην περίπτωσή μας όμως οι συγκρίσεις γίνονται αναλογικά αφού έχουμε επιλέξει μόνο MinorCPU).
- Όσό αυξάνεται το μέγεθος μιας μνήμης με ανάλογο τρόπο αυξάνεται και το κόστος της. 
- Το κόστος της Level-1-cache είναι πολύ μεγαλύτερο από το κόστος της Level-2-cache και αν και μικρότερη σε μέγεθος, η ταχύτητας της είναι κατά πολύ μεγαλύτερη.
- Αυξάνοντας το associativity αυξάνουμε την πολυπλοκότητα και άρα το κόστος. 
- Η Level-1-cache είναι όσο το δυνατόν πιο κοντά στον επεξεργαστή και άρα η αύξηση των associativities να μην επηρρεάζει το κόστος με τον ίδιο τρόπο που επηρρεάζει η αύξηση των associativities της Level-2-cache.
- Όσον αφορά το cacheline_size αν και δεν αναφέρεται κάπου στη βιβλιογραφία ότι η αύξησή του επηρρεάζει το κόστος μπορεί να επηρρεάζεται η πολυπλοκότητά του επομένως επηρρεάζεται έμμεσα και το κόστος.



Έτσι οδηγούμαστε σε μια συνάρτηση κόστους της μορφής :
$$
κόστος = Α*(L1isize +L1dsize)+B*L2size+C*(L1iassoc+L1dassoc)+D*L2assoc+E*(Cachelinesize)
$$
Έτσι επιλέγουμε τιμές για Α = 20, Β = 2, C = 2, D = 1, E = 1



Οι τιμές επιλέχθηκαν αυθαίρετα με βάση τις παραμέτρους που τονίστηκαν πιο πάνω.



Για την επιλογή κάθε φορά της κατάλληλης αρχιτεκτονικής σε σχέση με την αποδοτικότητα αλλά και το κόστος μπορούμε να εφαρμόσουμε μια συνάρτηση της μορφής :
$$
F = (κόστος)^n*(CPI)^m
$$
 όπου οι τιμές n,m επιλέγονται με υποκειμενικό κριτήριο για να δώσουν βαρύτητα στο κόστος ή στην ταχύτητα.







H πρότασή μας για την οικονομικότερη-αποδοτικότερη λύση σε κάθε benchmark είναι:



|                | bzip     | mcf      | libm     | sjeng    | hmmer    |
| -------------- | -------- | -------- | -------- | -------- | -------- |
| L1d_size       | 32       | 32       | 16       | 16       | 64       |
| L1d_assoc      | 4        | 4        | 2        | 4        | 8        |
| L1i_size       | 16       | 32       | 16       | 16       | 32       |
| L1i_assoc      | 2        | 4        | 2        | 2        | 8        |
| L2_size        | 2        | 2        | 4        | 4        | 1        |
| L2_assoc       | 4        | 2        | 2        | 2        | 2        |
| cacheline_size | 128      | 128      | 128      | 128      | 128      |
| CPI            | 1.626263 | 1.113831 | 1.989111 | 4.972837 | 1.180636 |







Ενώ για όλα τα benchmark μαζι προτείνονται οι τιμες:



| Προτεινόμενες τιμές παραμέτρων |      |
| ------------------------------ | ---- |
| L1d_size                       | 32   |
| L1d_assoc                      | 2    |
| L1i_size                       | 32   |
| L1i_assoc                      | 2    |
| L2_size                        | 2    |
| L2_assoc                       | 2    |
| cacheline_size                 | 128  |



και με βάση αυτές τις τιμές έχουμε τα αντίστοιχα CPI:



| Βenchmarks | CPI      |
| ---------- | -------- |
| bzip       | 1.642656 |
| mcf        | 1.075051 |
| libm       | 1.990434 |
| sjeng      | 4.974860 |
| hmmer      | 1.184950 |





Σε σχέση με τις by default παραμέτρους οι οποίες μας εξασφαλίζουν μια συμφέρουσα επιλογή καθώς φαίνεται να είναι αρκετά αποδοτική ως προς το κόστος τους η προτεινόμενη από εμάς αρχιτεκτονική καταφέρνει να μειώσει σε σημαντικό βαθμό τις υψηλές CPI όπως αυτή του libm αλλά και του sjeng αντίθετα όμως έχει μια μικρή αύξηση στα CPI των υπολοίπων. Ο λόγος που συμβαίνει αυτό είναι γιατί προτιμήθηκε η μείωση του μεγέθους της L1_size (και συγκεκριμένα του L1d_size από 64kB σε 32kB) που συνεπάγεται την μείωση του κόστους αλλά και η αύξηση του cacheline_size στα 128kB αφού όπως έχει προαναφερθεί είναι αναγκαίο το spatial locality.





#### <u>Βιβλιογραφία</u>

 	

- http://gem5.org/Main_Page

- http://homepages.inf.ed.ac.uk/bgrot/pubs/SOP_ISCA12.pdf
- https://www.onlinecharttool.com
- https://el.wikipedia.org/wiki/%CE%9A%CE%B5%CE%BD%CF%84%CF%81%CE%B9%CE%BA%CE%AE_%CE%9C%CE%BF%CE%BD%CE%AC%CE%B4%CE%B1_%CE%95%CF%80%CE%B5%CE%BE%CE%B5%CF%81%CE%B3%CE%B1%CF%83%CE%AF%CE%B1%CF%82
- http://ece-research.unm.edu/jimp/611/slides/chap5_2.html







#### <u>Κριτική της Εργασίας</u>: 

Το δεύτερο κομμάτι της εργασίας αν και πιο απαιτητικό μας βοήθησε να κατανοήσουμε βαθύτερα την Αρχιτεκτονική των Υπολογιστών. Γνωρίσαμε καλύτερα τον προσομοιωτή gem5, αφιερώσαμε χρόνο στον πειραματισμό και την καταγραφή αποτελεσμάτων και ερευνήσαμε το θέμα της απόδοσης με βάση το κόστος. Θα προτιμούσαμε να έχει δοθεί μια πιο συγκεκριμένη οδηγία όσον αφορά τη συνάρτηση κόστους διότι δεν υπήρχε αρκετό υλικό βασιστούμε.

