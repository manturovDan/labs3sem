namespace MatrixR {
	struct nzel {
		int number;
		int position;
		nzel *next;
	};

	struct Line {
		int elemsc; //count of elems
		int nzelems; //count of non zero elems
		int number;
		nzel *row;
		Line *nextRow;
	};

	int inputM(Line *&, int &, int &);
	void printTable(Line *);
	void outputM(Line *, int, int);
	int convertM(Line *&, Line *, int, int, int);
	void sortM(Line *, int, int);
	int complines(const void *, const void *);
	void eraseM(Line *);
	void eraseMA(Line *);
}