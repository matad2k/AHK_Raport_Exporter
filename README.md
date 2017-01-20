# AHK_Raport_Exporter

I.Przeznaczenie

Program służy do automatycznego eksportowania testów omicrona do formatu RTF

II.Wymagania

Do działania programu wymagany jest AutoHotkey wersja 1.1 ( program darmowy) oraz Test Universe 3.xx zainstalowany ze wszystkimi modułami, program przetestowany na Windows 7

III.Użytkowanie

1. Zainstalować wymagane programy
2. Wcisnąć CTRL+ALT+R
3. Wybrać Folder
4. Podczas działania programu nie zaleca się robienia jakichkolwiek akcji na komputerrze ( może to zakłóćić działanie programu)
5. Czekać na podsumowanie, jeśli nie wyskoczyło okienko zakończenia działania to znaczy, że skrypt działa w zawieszeniu i trzeba załadować program na nowo


IV. Lista Zmian

0.7
-Zmiany w algorytmie - optymalizacja
-Licznik czasu wykonywania skryptu

0.6
-Dodano obsługe podfolderów
-Optymalizacja algorytmu o 10%
-Teraz Raport exporter pomija pliki gdy RTF są wyeksportowane
-Dodano podsumowanie zadania
-Dodano możliwość exportu z QuickCMC


0.5
-W oknie zapisu raportu nie są już wykorzystane kliknięcia
-poprawiono bład przy którym skrypt pomijał *.rmp
-eksport jest wykonywany do aktualnego folderu
-przepisano na nowo wykonano istotne zmiany w algorytmie

0.4
-Dodano filtracje rozszrzeń, eksportuje raporty tylko dla rozszerzeń Omicrona
-Export zrobiono w formie funkcji

0.3
-Dodano możliwość wybrania folderu w celu seryjnego exportu raportu

0.2
-Automatyczny eksport raportu

0.1
-Program powstał


V. Planowane zmiany
-Zaimplementowanie eksportu dla zaznaczonych plików
-Wybór czy pomijać czy nadpisywać pliki dla istniejących plików RTF
-Pauzowanie i ponowny start skryptu
-Scalanie

VI. Znane Błędy

- Skrypt nieprawidłowo rozpoznaje pliki ze spacjami otwiera te pliki mimo, że rozszerzenie nie jest w liście rozszerzeń dozwolonych
- Nie działa z AHK 1.1, zaleca się stosowanie 1.0

