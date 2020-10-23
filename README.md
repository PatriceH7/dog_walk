# README for dog_walk

Le Airbnb des promenades de chiens
Version Ruby 2.7.1

4 models ont été définis : City, DogSitter, Dog, Stroll
Un dog_sitter peut promener plusieurs dog lors d'une stroll (promenade, en anglais) ; et un dog peut avoir plusieurs dog_sitter via les stroll. On précise également la ville des promeneurs et des chiens pour faire un super algorithme de matching. 
On a créé City, et inclus city_id en foreign key au sein de DogSitter et Dog.

Les relations en place sont du type:
1-N entre les dog_sitter et les stroll
1-N entre les dog et les stroll
Ce qui nous donne une relation N-N entre les dog_sitter et les dog, à travers les stroll.

La relation entre les city et les dog_sitter est de type 1-N, de même que celle entre les city et les dog.
Toutefois, 1 dog_sitter n'est associé qu'à une ville, et il en est de même des dog.

On lancera seed avec la commande : rails db:seed
