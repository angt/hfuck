#include <stdint.h>
#include <unistd.h>

static
int c(const char *v)
{
    int i = 0;
    while (v[i] == 'h' || v[i] == '\'') i++;
    return i;
}

int main(int n, char **v)
{
    static uint8_t x[1 << 16], *p = x;
    for (int i = 1; i < n; i++) {
        int l = 1;
        switch (c(v[i])) {
            case 1: (*p)++; break;
            case 2:    p++; break;
            case 3: (*p)--; break;
            case 4:    p--; break;
            case 5: write(1, p, 1); break;
            case 6:  read(0, p, 1); break;
            case 7: if (!*p) while (l) { i++; l -= (c(v[i]) == 8) - (c(v[i]) == 7); }; break;
            case 8: if ( *p) while (l) { i--; l += (c(v[i]) == 8) - (c(v[i]) == 7); }; break;
            default: return 1;
        }
    }
}
