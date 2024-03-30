/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alex <alex@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/23 16:20:41 by ahiguera          #+#    #+#             */
/*   Updated: 2024/03/31 00:31:35 by alex             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

static char	*read_line(int fd, char *buf)
{
	char	*line;
	int		countread;

	countread = -2;
	line = ft_strdup(buf);
	while (!(ft_strchr(line, '\n')) && countread != 0)
	{
		countread = read(fd, buf, BUFFER_SIZE);
		if (countread == -1)
		{
			free(line);
			ft_bzero(buf, BUFFER_SIZE + 1);
			return (NULL);
		}
		buf[countread] = '\0';
		line = gn_strjoin(line, buf, countread);
	}
	return (line);
}

static void	prepare_buffer(char *buf, char *line, char *newline)
{
	int	to_copy;

	if (newline != NULL)
	{
		to_copy = newline - line + 1;
		ft_strlcpy(buf, newline + 1, BUFFER_SIZE + 1);
	}
	else
	{
		to_copy = ft_strlen(line);
		ft_strlcpy(buf, "", BUFFER_SIZE + 1);
	}
	line[to_copy] = '\0';
}

char	*get_next_line(int fd)
{
	static char	buf[BUFFER_SIZE + 1];
	char		*line;
	char		*newline;

	if (fd < 0 || BUFFER_SIZE <= 0)
		return (NULL);
	line = read_line(fd, buf);
	if (!line || ft_strlen(line) == 0)
		return (free(line), NULL);
	newline = ft_strchr(line, '\n');
	prepare_buffer(buf, line, newline);
	return (line);
}
