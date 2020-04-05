#include <unistd.h>
#include <stdlib.h>

static int
h(const char *v)
{
    int i = 0;
    while (v[i] == 'h' || v[i] == '\'') i++;
    return i;
}

int
main(int n, char **v)
{
    unsigned char *p = malloc(1ULL << 24);
    for (int l, i = 1; l = 1, i < n; i++) switch (h(v[i])) {
        case 1: (*p)++; break;
        case 2: ( p)++; break;
        case 3: (*p)--; break;
        case 4: ( p)--; break;
        case 5: write(1, p, 1); break;
        case 6:  read(0, p, 1); break;
        case 7: if (!*p) while (l) { i++; l -= (h(v[i]) == 8) - (h(v[i]) == 7); }; break;
        case 8: if ( *p) while (l) { i--; l += (h(v[i]) == 8) - (h(v[i]) == 7); }; break;
        default: return 1;
    }
}
