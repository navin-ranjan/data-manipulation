# Python Fundamentals Tutorial – Detailed Study Guide

A step‑by‑step tutorial that expands each core Python topic into its own dedicated section. Every section contains:
1. **Definition** – concise description of the concept.
2. **In‑depth notes** – key points, best practices, and common pitfalls.
3. **Full runnable example** – copy‑and‑paste code that you can execute to see the concept in action.

---

## 1️⃣ Hello, World!
**Definition:** The canonical first program that prints a greeting to the console. It confirms that Python is correctly installed and that the interpreter can execute a script.

**In‑depth notes:**
- `print()` writes the supplied string to `stdout` and adds a newline by default.
- The interpreter evaluates the string literal at runtime; no compilation step is needed.
- This example works unchanged in the REPL, a `.py` file, or a Jupyter notebook cell.

```python
# hello_world.py
print("Hello, World!")
```
---

## 2️⃣ Variables & Data Types
**Definition:** A *variable* is a name that references an object in memory. Python is *dynamically typed* – the interpreter determines the type of an object at runtime, not at parse time.

### 2.1 Numbers
- **Integers (`int`)** – arbitrary‑precision whole numbers. No overflow.
- **Floats (`float`)** – double‑precision (IEEE‑754) real numbers. Beware of floating‑point rounding errors.
- **Complex numbers (`complex`)** – represented as `a + bj`.

```python
# Numbers
age = 30                 # int
pi = 3.14159             # float
z = 2 + 3j              # complex

print("Types:", type(age), type(pi), type(z))
```
### 2.2 Strings
- Immutable sequences of Unicode characters.
- Can be delimited by single, double, or triple quotes (the latter supports multi‑line strings).
- Raw strings (`r"..."`) treat backslashes literally – useful for regular expressions and Windows paths.

```python
single = 'single quotes'
double = "double quotes"
triple = """Line 1
Line 2
Line 3"""
raw_path = r"C:\\Users\\Navin"

print(single, double)
print(triple)
print(raw_path)
```
### 2.3 Booleans
- Only two values: `True` and `False`.
- Used for control flow and as the result of comparison operators.

```python
is_ready = True
is_done = False
print(is_ready and not is_done)  # True
```
### 2.4 Collections
| Type | Mutability | Order | Typical Use |
|------|------------|-------|-------------|
| `list` | mutable | ordered | sequences, stack/queue operations |
| `tuple` | immutable | ordered | fixed collections, dictionary keys |
| `set` | mutable | unordered | deduplication, membership testing |
| `dict` | mutable | insertion‑order (Python 3.7+) | mapping keys to values |

```python
# List – mutable, ordered
fruits = ["apple", "banana", "cherry"]
fruits.append("date")
print(fruits)

# Tuple – immutable, ordered
coords = (10, 20)
print(coords)

# Set – unique, unordered
unique = {1, 2, 2, 3}
print(unique)   # {1, 2, 3}

# Dict – key/value mapping
person = {"name": "Alice", "age": 28}
print(person["name"])
```
---

## 3️⃣ Control Flow
**Definition:** Statements that alter the execution order of code, enabling conditional branching and repetition.

### 3.1 Conditional Statements (`if` / `elif` / `else`)
- Conditions are expressions that evaluate to a boolean value.
- Python uses *truthiness*: many objects have an inherent truth value (e.g., empty containers are `False`).

```python
score = 85
if score >= 90:
    grade = "A"
elif score >= 80:
    grade = "B"
else:
    grade = "C"
print(f"Grade: {grade}")
```
### 3.2 Loops
#### While Loop
- Repeats as long as the condition remains true.
- Must ensure the loop eventually terminates to avoid infinite loops.

```python
counter = 0
while counter < 3:
    print(f"counter = {counter}")
    counter += 1
```
#### For Loop
- Iterates over any *iterable* (`list`, `range`, `dict`, generator, etc.).
- The loop variable receives each element in turn.

```python
# Iterate over a list
for fruit in ["apple", "banana", "cherry"]:
    print(fruit)

# Iterate over a range of numbers (0‑4)
for i in range(5):
    print(i)
```
#### List Comprehension (concise transformation)
```python
squares = [x * x for x in range(1, 6)]
print(squares)   # [1, 4, 9, 16, 25]
```
---

## 4️⃣ Functions
**Definition:** A reusable block of code that can accept arguments, perform a computation, and optionally return a result. Functions promote modularity and avoid duplication.

### 4.1 Basic Syntax & Docstrings
```python
def add(a: int, b: int) -> int:
    """Return the sum of *a* and *b*.
    Type hints are optional but improve readability.
    """
    return a + b

print(add(3, 5))
```
### 4.2 Parameters
- **Positional parameters** – filled by position.
- **Keyword parameters** – specified by name; allow out‑of‑order passing.
- **Default values** – make a parameter optional.
- **`*args`** – captures extra positional arguments as a tuple.
- **`**kwargs`** – captures extra keyword arguments as a dict.

```python
def greet(name: str, times: int = 1, *extra, **options):
    """Print *name* *times* times and show any extra data.
    """
    for _ in range(times):
        print(f"Hello, {name}!")
    if extra:
        print("Extra positional:", extra)
    if options:
        print("Extra keyword:", options)

greet("Bob", 2, "extra1", "extra2", mood="happy")
```
---

## 5️⃣ Modules & Packages
**Definition:** A *module* is a single `.py` file that can be imported. A *package* is a directory of modules containing an `__init__.py` file, allowing hierarchical organization.

### 5.1 Import Mechanics
- `import module` – loads the module and creates a namespace.
- `from module import name` – binds `name` directly into the current namespace.
- `import module as alias` – convenient short name.
- Relative imports (`from . import sibling`) work only inside packages.

```python
# Assume a file utils.py with a function helper()
import utils
print(utils.helper())

from utils import helper as help_func
print(help_func())
```
### 5.2 Creating a Simple Module
Create `math_utils.py`:
```python
# math_utils.py

def multiply(a, b):
    return a * b
```
Use it:
```python
import math_utils
print(math_utils.multiply(4, 5))  # 20
```
### 5.3 Building a Package
Directory layout:
```
my_pkg/
│   __init__.py   # can expose public symbols
│   strings.py
│   numbers.py
```
`strings.py`:
```python
def shout(text):
    return text.upper() + "!"
```
`numbers.py`:
```python
def is_even(n):
    return n % 2 == 0
```
`__init__.py` (optional re‑export):
```python
from .strings import shout
from .numbers import is_even
```
Usage:
```python
from my_pkg import shout, is_even
print(shout("hello"))   # HELLO!
print(is_even(7))        # False
```
---

## 6️⃣ Working with Files
**Definition:** The built‑in `open()` returns a *file object* that supports reading, writing, and appending. Using a `with` block guarantees the file is closed, even if an exception occurs.

### 6.1 Modes & Encoding
- `'r'` – read (default).
- `'w'` – write (truncates existing file).
- `'a'` – append.
- `'b'` – binary mode (e.g., for images).
- Always specify `encoding='utf-8'` for text files to avoid platform‑specific defaults.

### 6.2 Common Operations
```python
# Write (overwrites if file exists)
with open('example.txt', 'w', encoding='utf-8') as f:
    f.write('First line\nSecond line\n')

# Read line‑by‑line
with open('example.txt', 'r', encoding='utf-8') as f:
    for line in f:
        print('Line:', line.strip())

# Read the whole file at once
with open('example.txt', 'r', encoding='utf-8') as f:
    content = f.read()
print('Full content:\n', content)
```
### 6.3 Working with Binary Data
```python
# Read a binary image file
with open('photo.jpg', 'rb') as f:
    data = f.read()
print('Bytes read:', len(data))
```
---

## 7️⃣ Error Handling (Exceptions)
**Definition:** Exceptions provide a structured way to detect and recover from error conditions without crashing the program.

### 7.1 Try/Except/Else/Finally
- `except` can target specific exception classes.
- `else` runs only if no exception was raised.
- `finally` always runs – ideal for clean‑up actions.

```python
try:
    value = int('42')
    result = 10 / value
except ValueError as ve:
    print('Conversion error:', ve)
except ZeroDivisionError as zde:
    print('Math error:', zde)
else:
    print('Result is', result)
finally:
    print('Cleanup actions go here')
```
### 7.2 Raising Custom Exceptions
```python
class ValidationError(Exception):
    pass

def validate_age(age):
    if age < 0:
        raise ValidationError('Age cannot be negative')
    return True

try:
    validate_age(-5)
except ValidationError as e:
    print('Caught custom error:', e)
```
---

## 8️⃣ Object‑Oriented Programming (OOP)
**Definition:** OOP models software as *objects* that bundle state (attributes) with behaviour (methods). It enables encapsulation, inheritance, and polymorphism.

### 8.1 Classes & Instances
```python
class Animal:
    def __init__(self, name: str):
        self.name = name    # instance attribute

    def speak(self) -> str:
        raise NotImplementedError('Subclasses must implement speak')

class Dog(Animal):
    def speak(self) -> str:
        return 'Woof!'

class Cat(Animal):
    def speak(self) -> str:
        return 'Meow!'

pets = [Dog('Rex'), Cat('Mittens')]
for pet in pets:
    print(pet.name, 'says', pet.speak())
```
### 8.2 Inheritance & `super()`
```python
class Vehicle:
    def __init__(self, make):
        self.make = make
    def start(self):
        print(f"{self.make} engine started")

class Car(Vehicle):
    def __init__(self, make, doors):
        super().__init__(make)
        self.doors = doors
    def start(self):
        super().start()
        print('Car is ready to drive')

c = Car('Toyota', 4)
c.start()
```
### 8.3 Polymorphism & Duck Typing
- Python relies on *behavior* rather than explicit interfaces. As long as an object implements the required method, it can be used interchangeably.
```python
def make_it_speak(animal):
    print(animal.speak())

make_it_speak(Dog('Buddy'))
make_it_speak(Cat('Whiskers'))
```
---

## 9️⃣ Virtual Environments & Dependency Management
**Definition:** A *virtual environment* isolates a project's interpreter and installed packages, preventing conflicts with system‑wide packages.

### 9.1 Creating & Activating a venv
```bash
# Create a virtual environment in the .venv directory
python -m venv .venv

# Activate (Unix/macOS)
source .venv/bin/activate
# Activate (Windows PowerShell)
.\.venv\Scripts\Activate.ps1
```
### 9.2 Managing Packages
- Use `pip` inside the activated environment.
- `pip freeze > requirements.txt` captures exact versions.
- Re‑install with `pip install -r requirements.txt`.
```bash
pip install requests pandas
pip freeze > requirements.txt
```
### 9.3 Common Pitfalls
- Forgetting to activate the venv before installing packages leads to global installs.
- Deleting the `.venv` folder removes all installed packages – you can recreate it from `requirements.txt`.
---

## 🔟 Useful Standard‑Library Modules
| Module | Typical use case |
|--------|-----------------|
| `json` | Serialize/deserialize JSON data |
| `datetime` | Work with dates, times, timezones |
| `os` / `pathlib` | Filesystem navigation, environment variables |
| `collections` | Advanced containers (`Counter`, `defaultdict`, `deque`) |
| `itertools` | Efficient iterator building (e.g., `product`, `chain`) |
| `re` | Regular‑expression pattern matching |
| `logging` | Configurable logging for debugging and production |
---

## 📚 Further Learning Resources
- **Official Python Documentation** – https://docs.python.org/3/
- **Real‑Python** tutorials – https://realpython.com/
- **Automate the Boring Stuff with Python** (free) – https://automatetheboringstuff.com/
- **PEP 8 – Style Guide** – https://peps.org/pep-0008/
- **Python Cheatsheet** – https://github.com/gto76/python-cheatsheet

---

**Happy coding and enjoy your Python journey!**