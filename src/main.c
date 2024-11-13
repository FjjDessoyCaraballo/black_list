/* ************************************************************************** */
/*  ROFL:ROFL:ROFL:ROFL 													* */
/*          _^___      														* */
/* L     __/   [] \    														* */
/* LOL===__        \   			MY ROFLCOPTER GOES BRRRRRR					* */
/* L      \________]  					by fdessoy-							* */
/*         I   I     			(fdessoy-@student.hive.fi)					* */
/*        --------/   														* */
/* ************************************************************************** */

#include "../inc/blackList.h"

const char* black_list[] = {"curl", "wget", "lynx", "links", "nc", "telnet", "ftp", "scp", "rsync", "git clone"};

int main(int argc, char **argv)
{
	if (argc == 2)
	{
		static t_data *data;
		data = calloc(1, sizeof(data));
		if (!data)
		{
			write(1, "Failure to allocate\n", 21);
			return (1);
		}
		int option = atoi(argv[1]);
		switch (option) // this is where we sort the privileges
		{
			case 1:
				write(1, "ok\n", 3); 
				break ;
			case 2:
				write(1, "option 2\n", 10);
				break ;
			case 3:
				write(1, "option 3\n", 10);
				break ;
			case 4:
				write(1, "option 4\n", 10);
				break ;
			default:
				write(1, ERROR1, strlen(ERROR1));
				break ;
		}
	}
	else
	{
		write(1, ERROR1, strlen(ERROR1));
		return (FAILURE);
	}
	return (0);
}