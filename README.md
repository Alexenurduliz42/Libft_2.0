
    ██╗     ██╗██████╗ ███████╗████████╗    ██████╗     ██████╗ 
    ██║     ██║██╔══██╗██╔════╝╚══██╔══╝    ╚════██╗   ██╔═████╗
    ██║     ██║██████╔╝█████╗     ██║        █████╔╝   ██║██╔██║
    ██║     ██║██╔══██╗██╔══╝     ██║       ██╔═══╝    ████╔╝██║
    ███████╗██║██████╔╝██║        ██║       ███████╗██╗╚██████╔╝
    ╚══════╝╚═╝╚═════╝ ╚═╝        ╚═╝       ╚══════╝╚═╝ ╚═════╝          


# Descripción

 Se trata de una **modificación** propia del primer proyecto de **42 Scohol**, llamado Libft. Libft es una libreria de funciones retutilizables, enpaquetadas en una libreria para C.

 En esta modificación, he añadido algunas funciones utiles que he necesitado en algún proyecto de **42** y las funciones *ft_printf()* y *get_next_line()* que corresponden a los proyectos 2 y 3 de **42**.

## Funciones

### ft_..fd()

| Función            |                    Sintaxis              |
|--------------------|------------------------------------------|
| ft_putchar_fd      |  `void ft_putchar_fd(char c, int fd);`   |
| ft_putstr_fd       |  `void ft_putstr_fd(char *s, int fd);`   |
| ft_putendl_fd      |  `void ft_putendl_fd(char *s, int fd);`  |
| ft_putnbr_fd       |  `void ft_putnbr_fd(int n, int fd);`     |

### ft_is..()

Son funciones que verifican o comprueban algo y devuelven true o false.

| Función        |Sintaxis                            |
|----------------|------------------------------------|
| isalpha        |  `int ft_isalpha(int c);`          |
| isdigit        |  `int ft_isdigit(int c);`          |
| isalnum        |  `int ft_isalnum(char c);`         |
| ascii          |  `int ft_isascii(int c);`          |
| isprint        |  `int ft_isprint(int c);`          |
| isspace        |  `int ft_isspace(int c);`          |

| Función            |                    Sintaxis                                                 |
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

### ft_mem..()

Son funciones que operan en memoria sin alocarla mediante *malloc()* o *calloc()*. 

| Función            |                    Sintaxis                                  |
|--------------------|--------------------------------------------------------------|
| ft_memset          |  `void ft_memset(str, valor, tamaño);`                       |
| ft_memcpy          |  `void ft_memcpy(destino, origen,tamaño);`                   |
| ft_memmove         |  `void ft_memmove(destino, origen,tamaño);`                  |
| ft_memchr          |  `void ft_memchr(*pt, valor, tamaño)`                        |
| ft_memcmp          |  `int ft_memcmp(const void *s1, const void *s2, size_t n);`  |

### ft_str..()

| Función            |                    Sintaxis                                                 |
|--------------------|-----------------------------------------------------------------------------|
| ft_strlen          |  `size_T ft_strlen(char *str);`                                             |
| ft_strlcpy         |  `size_t ft_strlcpy(char *dest, const char *src, size_t destsize);`         |
| ft_strlcat         |  `size_t ft_strlcat(char *dst, const char *src, size_t dstsize);`           |
| ft_strchr          |  `char *ft_strchr(const char *s, int c);`                                   |
| ft_strrchr         |  `char *ft_strrchr(const char *s, int c);`                                  |
| ft_strncmp         |  `ft_strcmp(const char *s1, const char *s2)`                                |
| ft_strnstr         |  `char *ft_strnstr(const char *haystack, const char *needle, size_t len);`  |
| ft_strdup          |  `char	*ft_strdup(const char *s1);`                                       |
| ft_substr          |  `char *ft_substr(char const *s, unsigned int start, size_t len);`          |
| ft_strjoin         |  `char *ft_strjoin(char const *s1, char const *s2);`                        |
| ft_strtrim         |  `char *ft_strtrim(char const *s1, char const *set);`                       |
| ft_strmapi         |  `char *ft_strmapi(char const *s, char (*f)(unsigned int, char));`          |
| ft_striteri        |  `void ft_striteri(char *s, void (*f)(unsigned int, char*));`               |

### ft_*()

| Función            |                    Sintaxis                     |
|--------------------|-------------------------------------------------|
| ft_atoi            |  `int ft_atoi(const char *str);`                |
| ft_itoa            |  `char *ft_itoa(int n);`                        |
| ft_bzero           |  `void ft_memset(str, tamaño);`                 |
| ft_calloc          |  `void *ft_calloc(size_t count, size_t size);`  |
| ft_toupper         |  `int ft_tolower(int c);`                       |
| ft_tolower         |  `int ft_toupper(int c);`                       |
| ft_split           |  `char **ft_split(char const *s, char c);`      |

---

### ft_printf()

### get_next_line()
