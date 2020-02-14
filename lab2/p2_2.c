extern int MAX_2(int x, int y);

int main() {
	//int a, b, c;
	//a = 1;
	//b = 2;
	//c = MAX_2(a, b);
	//return c;
	int a[5] = {1, 2, 30, 4, 56};
	int mx = 0;
	for(int i = 0; i < 5; i++){
		mx = MAX_2(mx, a[i]);
	}
	return mx;
