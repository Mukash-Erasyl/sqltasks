# Вопросы

## Как работают параметры типов IN, OUT и INOUT в хранимых процедурах? В чем их отличия?

В SQL есть 3 способа передачи параметров различного типа. Они работают путем того что мы передаем
их в качестве параметров в процедуры, а затем мы можем использовать их в логике процедуры.

- **IN**: `только можно читать`:
- **OUT**: `Позволяет вернуть значение`:
- **INOUT**: `INOUT - совмещает свойства предыдущих 2`:

## В каких случаях полезно использовать процедуры для выполнения сложных расчетов в базе данных?

Процедуры полезно использовать для выполнения сложных расчетов в базе данных
в случаях когда расчеты действительно сложны , когда мы хотим переиспользовать код
и при валидации данных.
То есть допустим мы знаем что есть постоянная логика для обработки каких либо данных, и мы
знаем что мы будем переиспользовать эту логику несколько раз. Как раз таки мы можт из этой
логики сделать переиспользуемый сценарий для данных в виде процедуры.

## Как использование условных операторов в процедурах (например, IF или ELSEIF) улучшает гибкость обработки данных?

Использование условных операторов помогают увеличить гибкость обработки данных благодаря тому что
с помощью них мы можем обрабатывать разные состояния данных и разные условия обработок. 
