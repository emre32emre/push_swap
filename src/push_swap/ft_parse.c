/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_parse.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mkocabas <mkocabas@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/31 12:16:11 by mkocabas          #+#    #+#             */
/*   Updated: 2023/03/28 16:05:37 by mkocabas         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../incl/push_swap.h"

t_stack	*ft_parse(int argc, char **argv)
{
	t_stack	*stack_a;
	int		i;

	i = 1;
	stack_a = NULL;
	if (argc < 2)
		ft_error();
	else if (argc == 2)
		stack_a = ft_parse_args_quoted(argv);
	else
	{
		list_args(argv, &stack_a);
	}
	return (stack_a);
}
