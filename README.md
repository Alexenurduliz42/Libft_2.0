
    ██╗     ██╗██████╗ ███████╗████████╗    ██████╗     ██████╗ 
    ██║     ██║██╔══██╗██╔════╝╚══██╔══╝    ╚════██╗   ██╔═████╗
    ██║     ██║██████╔╝█████╗     ██║        █████╔╝   ██║██╔██║
    ██║     ██║██╔══██╗██╔══╝     ██║       ██╔═══╝    ████╔╝██║
    ███████╗██║██████╔╝██║        ██║       ███████╗██╗╚██████╔╝
    ╚══════╝╚═╝╚═════╝ ╚═╝        ╚═╝       ╚══════╝╚═╝ ╚═════╝          


# 📖Description

This is a modification of the first project from 42 School, called Libft. Libft is a library of reusable functions, packaged into a C library.

In this modification, I have added some useful functions that I have needed in certain 42 projects, as well as the functions ft_printf() and get_next_line(), which correspond to projects 2 and 3 of 42.

## Structure
```bash
.
└── src
    ├── errors
    ├── ft_*to*
    ├── ft_fd
    ├── ft_is
    ├── ft_lst
    ├── ft_mem
    ├── ft_str
    ├── get_next_line
    └── printf

```

## 🧰Functions

### 🔧 errors()

Prototypes of custom errors.

| Function           |                    Syntax                       |
|--------------------|-------------------------------------------------|
| ft_error           |  `void	ft_error(char *message);`              |
| ft_perror          |  `void	ft_perror(void);`                      |

### 🔧 ft_..to..()

This set of functions converts from one data type **to** another.

| Function           |                    Syntax                       |
|--------------------|-------------------------------------------------|
| ft_atoi            |  `int ft_atoi(const char *str);`                |
| ft_itoa            |  `char *ft_itoa(int n);`                        |
| ft_toupper         |  `int ft_tolower(int c);`                       |
| ft_tolower         |  `int ft_toupper(int c);`                       |

### 🔧 ft_..fd()

These functions work with file descriptors.

| Function           |                    Syntax                |
|--------------------|------------------------------------------|
| ft_putchar_fd      |  `void ft_putchar_fd(char c, int fd);`   |
| ft_putstr_fd       |  `void ft_putstr_fd(char *s, int fd);`   |
| ft_putendl_fd      |  `void ft_putendl_fd(char *s, int fd);`  |
| ft_putnbr_fd       |  `void ft_putnbr_fd(int n, int fd);`     |

### 🔧 ft_is..()

These are functions that verify or check something and return true or false.

| Function       |Syntax                              |
|----------------|------------------------------------|
| isalpha        |  `int ft_isalpha(int c);`          |
| isdigit        |  `int ft_isdigit(int c);`          |
| isalnum        |  `int ft_isalnum(char c);`         |
| ascii          |  `int ft_isascii(int c);`          |
| isprint        |  `int ft_isprint(int c);`          |
| isspace        |  `int ft_isspace(int c);`          |

### ft_lst..()

Set of functions that work with lists.

| Function           |                    Syntax                                                   |
|--------------------|-----------------------------------------------------------------------------|
| ft_lstnew          |  `t_list *ft_lstnew(void *content);`                                        |
| ft_lstadd_front    |  `void ft_lstadd_front(t_list **lst, t_list *new);`                         |
| ft_lstsize         |  `int ft_lstsize(t_list *lst);`                                             |
| ft_lstlast         |  `t_list *ft_lstlast(t_list *lst);`                                         |
| ft_lstadd_back     |  `void ft_lstadd_back(t_list **lst, t_list *new);`                          |
| ft_lstdelone       |  `void ft_lstdelone(t_list *lst, void (*del)(void *));`                     |
| ft_lstclear        |  `void ft_lstclear(t_list **lst, void (*del)(void *));`                     |
| ft_lstiteri        |  `void ft_lstclear(t_list **lst, void (*del)(void *));`                     |
| ft_lstmap          |  `t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));` |

### 🔧 ft_mem..()

These are functions that operate on memory without allocating it using malloc() or calloc().

| Function           |                    Syntax                                    |
|--------------------|--------------------------------------------------------------|
| ft_memset          |  `void ft_memset(str, valor, tamaño);`                       |
| ft_memcpy          |  `void ft_memcpy(destino, origen,tamaño);`                   |
| ft_memmove         |  `void ft_memmove(destino, origen,tamaño);`                  |
| ft_memchr          |  `void ft_memchr(*pt, valor, tamaño)`                        |
| ft_memcmp          |  `int ft_memcmp(const void *s1, const void *s2, size_t n);`  |

### 🔧 ft_str..()

These are functions that work with strings.

| Function           |                    Syntax                                                   |
|--------------------|-----------------------------------------------------------------------------|
| ft_strlen          |  `size_T ft_strlen(char *str);`                                             |
| ft_strlcpy         |  `size_t ft_strlcpy(char *dest, const char *src, size_t destsize);`         |
| ft_strlcat         |  `size_t ft_strlcat(char *dst, const char *src, size_t dstsize);`           |
| ft_strchr          |  `char *ft_strchr(const char *s, int c);`                                   |
| ft_strrchr         |  `char *ft_strrchr(const char *s, int c);`                                  |
| ft_strncmp         |  `int ft_strcmp(const char *s1, const char *s2)`                            |
| ft_strnstr         |  `char *ft_strnstr(const char *haystack, const char *needle, size_t len);`  |
| ft_strdup          |  `char *ft_strdup(const char *s1);`                                         |
| ft_substr          |  `char *ft_substr(char const *s, unsigned int start, size_t len);`          |
| ft_strjoin         |  `char *ft_strjoin(char const *s1, char const *s2);`                        |
| ft_strtrim         |  `char *ft_strtrim(char const *s1, char const *set);`                       |
| ft_strmapi         |  `char *ft_strmapi(char const *s, char (*f)(unsigned int, char));`          |
| ft_striteri        |  `void ft_striteri(char *s, void (*f)(unsigned int, char*));`               |

### 🔧 ft_*()

Independent auxiliary functions.

| Function           |                    Syntax                       |
|--------------------|-------------------------------------------------|
| ft_bzero           |  `void ft_memset(str, tamaño);`                 |
| ft_calloc          |  `void *ft_calloc(size_t count, size_t size);`  |
| ft_split           |  `char **ft_split(char const *s, char c);`      |
| ft_free            |  `void ft_free(char **array)`                   |

---
### 🖨️ ft_printf()

Personally redesigned printf function. It is safer than the original version as it uses write internally, although it has fewer data type options.

### 🖋️ get_next_line()

The GNL() function reads lines from a file descriptor line by line, efficiently and without needing to store the entire file in memory.