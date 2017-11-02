# MergeSort - projekt na zaliczenie

__MergeSort__ - implementacja sortowania przez scalanie stanowiąca projekt na zaliczenie. Na projekt składają się testy rozwiązania napisane w RSpec oraz rozwiązanie problemu, jakim jest wykonanie sortowania przez scalanie na tablicach jednowymiarowych zawierających elementy różnego typu danych, napisane w języku Ruby.

Cechy algorytmu sortowania przez scalanie:

| Złożoność obliczeniowa optymistyczna | Złożoność obliczeniowa typowa | Złożoność obliczeniowa pesymistyczna | Sortowanie w miejscu | Stabilność |
:--:|:--:|:--:|:--:|:--:
| *O(n log n)* | *O(n log n)* | *O(n log n)* | *NIE* | *TAK*

****

Struktura katalogu:

> [README](README.md)  
> [Gemfile](Gemfile)  
> [Gemfile.lock](Gemfile.lock)

> [lib](lib)
>> [merge_sort](lib/merge_sort.rb)

> [spec](spec)
>> [merge_sort](spec/merge_sort_spec.rb)

Lista użytych gem'ów:

> *rspec = 3.7.0*