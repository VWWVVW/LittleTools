import java.util.ArrayList;
import java.util.Scanner;

public class Calculator{
    public static final char[] types={'(',')','+','-','*','/','^','v'};
    public ArrayList<String> expression;
    public ArrayList<SegInf> segInf;

    public static void main(String[] args){
        Calculator c=new Calculator("((()())())()");
        c.setSegInf();
        c.printSegInf();
    }

    public Calculator(){
        this.expression=new ArrayList<String>();
    }

    public Calculator(String expression){
        this.expression=new ArrayList<String>();
        this.expression.add(expression);
    }

    public void setSegInf(){
        int id;
        segInf=new ArrayList<SegInf>();
        for(int i=0;i<expression.get(0).length();i++)
            for(byte j=0;j<types.length;j++)
                if(expression.get(0).charAt(i)==types[j]){
                    id=-(int)(j/2);
                    segInf.add(new SegInf(i,j,id));
                    break;
                }
        setParenId();
    }

    public void setParenId(){
        int sum,index,i;
        for(int id=1;chkId()<=0;id++){
            sum=0;
            index=-1;
            i=-1;
            for(SegInf s:segInf){
                i++;
                if(s.id!=0||s.type>1)
                    continue;
                if(index==-1&&s.type==0)
                    index=i;
                sum+=(s.type==1)?1:(-1);
                if(sum==0){
                    s.id=id;
                    segInf.get(index).id=id;
                    index=-1;
                }
            }
        }
    }

    public int chkId(){
        boolean isDone=true;
        int max=0;
        for(SegInf s:segInf){
            if(s.type==0&&s.id>=max)
                max=s.id;
            if(s.id==0)
                isDone=false;
        }
        return isDone?max:(-max);
    }

    public void printSegInf(){
        System.out.print("\nPos :");
        for(int i=0;i<segInf.size();i++)
            System.out.print(segInf.get(i).pos+" ");
        System.out.print("\nType:");
        for(int i=0;i<segInf.size();i++)
            System.out.print(segInf.get(i).type+" ");
        System.out.print("\nId  :");
        for(int i=0;i<segInf.size();i++)
            System.out.print(segInf.get(i).id+" ");
        System.out.print("\n");
    }
}

class SegInf{
    public byte type;
    public int pos,id=0;

    public SegInf(int pos,byte type,int id){
        this.pos=pos;
        this.type=type;
        this.id=id;
    }
}
