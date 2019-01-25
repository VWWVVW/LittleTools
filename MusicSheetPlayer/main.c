#include <windows.h>
#include <conio.h>
#include <stdio.h>
#include <stdlib.h>
#define L 28

struct musicSheet{
    int index;
    int pitch;
    float beat;
};

void playSound(int index,int pitch,float beat){
    float a[3][7]={ {131,147,165,175,196,220,247},
                    {262,294,330,349,392,440,494},
                    {523,587,659,698,784,880,988}};
    Beep(a[index][pitch-1],beat*250);
}

void playSheet(struct musicSheet *s,int max){
    int i;
    for(i=0;i<max;i++)
        playSound(s[i].index,s[i].pitch,s[i].beat);
}

int main(void){
    int i,ind[L+1],pit[L+1];
    float bet[L+1];
    char index[1000],pitch[1000],beat[1000];
    char *ptr,*retptr;
    FILE *fp=fopen("sheet.txt","rb");
    struct musicSheet sheet[L];
    //获取音高音调数据
    fgets(index,1000,fp);
    fgets(pitch,1000,fp);
    fgets(beat,1000,fp);
    fclose(fp);
    //分隔得单个音高音调
    for(ptr=index,i=0; (retptr=strtok(ptr," "))!=NULL; ptr=NULL,ind[++i]=atoi(retptr));
    for(ptr=pitch,i=0; (retptr=strtok(ptr," "))!=NULL; ptr=NULL,pit[++i]=atoi(retptr));
    for(ptr=beat,i=0; (retptr=strtok(ptr," "))!=NULL; ptr=NULL,bet[++i]=atof(retptr));
    //合并单音为乐谱
    for(i=0;i<L;i++){
        sheet[i].index=ind[i+1];
        sheet[i].pitch=pit[i+1];
        sheet[i].beat=bet[i+1];
    }
    //播放乐谱
    printf("Press [ESC] to exit.\nPress others to replay.");
    do{
        playSheet(sheet,L);
    }while(getch()!=27);

    return 0;
}
