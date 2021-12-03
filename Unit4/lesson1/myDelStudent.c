int myDelStuden()
{
char temp [40];
	unsigned int idtemp;
	
	printf("\n\t Enter student id to be deleted");
	gets(temp);
	idtemp=atoi(temp);
	
	struct Sstudent* tempptr= gpFirstStudent; // used to navigate through the list
	struct Sstudent* prevptr= NULL;	//once desired entry is found, used to link to next entry
	
	if(gpFirstStudent == NULL)
	{
		printf("Empty list... ");
		return 0;
	}
	
	while( tempptr->pNextStudent != NULL && tempptr->student.ID != idtemp )
	{
		prevptr = tempptr;
		tempptr = tempptr->pNextStudent;
	}
	if( tempptr->pNextStudent == NULL && tempptr->student.ID != idtemp) //end of list with no match
	{
		printf(" ID wasn't found... exit");
		return 1;
	}
	prevptr->pNextStudent = tempptr->pNextStudent; // if match, prev should point to tempnext
	
	if( tempptr == gpFirstStudent && tempptr->student.ID == idtemp)
	{	// if matched id was head of the list, need to change gpfirst to point to next
		if(tempptr->pNextStudent)
		gpFirstStudent = tempptr->pNextStudent;
		else
		{
			gpFirstStudent = NULL;
			  printf("\n Empty List");
		}
	}
	free((void*)tempptr);
	
	if( tempptr->student.ID == idtemp && tempptr->pNextStudent == NULL)
	{	//if match and last element, need to change plast to point to prev. after freeing data
		struct Sstudent* findpLast= gpFirstStudent;
		while( findpLast )
		{
			findpLast = findpLast->pNextStudent;
		}
		pLastStudent = findpLast;
	}
	return 0;

}