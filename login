void login()
{

    int char_pass,char_uname,f_username,f_password,char_rail;
    char ip_password[SIZE_1],file_username[SIZE_1],file_password[SIZE_1],ip_username[SIZE_1];
    //---------------------------------------------
    //print the start page
    FILE *fp_rail;
    fp_rail=fopen("startpage.DAT","r");
    if(fp_rail==NULL)
    {
        printf("File cannot be opened\n");
        exit(0);
    }//end if
    char_rail= getc(fp_rail);
    while (char_rail!= EOF)
    {
        putchar(char_rail);
        char_rail= getc(fp_rail);
    }//end while
    fclose(fp_rail);
    //---------------------------------------------
    //Login part
    printf("\nPLEASE LOGIN\n");
    printf("ENTER YOUR USERNAME AND PASSWORD\n");

   /* FILE *fp_login;
    fp_login=fopen("login.DAT","r");

    if(fp_login==NULL)
    {
        printf("file cannot be opened\n");
        main();
    }//end if*/
    printf("\nUsername:");
    scanf("%s",ip_username);
    printf("\nPassword:");
    scanf("%s",ip_password);
  /*  //---------------------------------------------
    char_uname = getc(fp_login);                                                                        //Check for the user name in Login.DAT file
    while (char_uname != EOF)                                                                           //if yes set flag to 1
    {                                                                                                   //else set flag to 0
      fscanf(fp_login,"%s",file_username);
      if(strcmp(ip_username,file_username)==0)
      {
         f_username=1;
         break;
      }//end if
    char_uname=getc(fp_login);
    }//end while
    //---------------------------------------------
    char_pass = getc(fp_login);                                                                         //Check for the password in Login.DAT file
    while (char_pass!=EOF)                                                                              //if yes set flag to 1
   {                                                                                                    //else set flag to 0
     fscanf(fp_login,"%s",file_password);
     if(strcmp(ip_password,file_password)==0)
     {
       f_password=1;
       break;
     }//end if
    char_pass = getc(fp_login);
   }//end while
    //---------------------------------------------

    if( f_username==1 && f_password==1)
   {*/
    //user1
    if((strcmp(ip_username,"karthik")==0) && strcmp(ip_password,"deadpool")==0)
    {
        system("cls");
        user1_two();
        return;
    }//end if
    //user2
    else if((strcmp(ip_username,"karan")==0) && strcmp(ip_password,"anarky")==0)
    {
        system("cls");
        user2();
        return;
    }//end else if
    //user3
    else if((strcmp(ip_username,"krutika")==0) && strcmp(ip_password,"fury")==0)
    {
       system("cls");
        user3();
        return;
    }//end else if
    //user4
    else if((strcmp(ip_username,"hiccup")==0) && strcmp(ip_password,"nightfury")==0)
    {
       system("cls");
        user4();
        return;
    }//end else if
    //invalid user name and password(if they don't match)
    else
    {
        system("cls");
        printf("**********Wrong Username or password**********\n");
        printf("**********Enter again**********\n\n");
        login();
    }//end else
//}//end if
      /*  //invalid user name and password(if they don't match)
        system("cls");
        printf("**********Wrong Username or password**********\n");
        printf("**********Enter again**********\n\n");
        login();*/
}//end login
