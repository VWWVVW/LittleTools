import java.util.ArrayList;
import java.util.Scanner;

public class Calculator{
    public static final char[] types={'(',')','+','-','*','/','^','v'};
    public String expression;
    public ArrayList<SegInf> segInf;

    public static void main(String[] args){
        Calculator c=new Calculator("(1+1)+(2+(3*2)/(2-3*(1+1)+2))");
        c.setSegInf();
        c.printSegInf();
    }

    public Calculator(){
        this.expression=new String("");
    }

    public Calculator(String expression){
        this.expression=expression;
    }

    public void setSegInf(){
        getParen();
        setParenId();
        getNum();
    }

    public void getParen(){
        int id;
        segInf=new ArrayList<SegInf>();
        for(int j=0;j<expression.length();j++)
            for(byte i=0;i<types.length;i++)
                if(expression.charAt(j)==types[i]){
                    id=-(int)(i/2);
                    segInf.add(new SegInf(i,id));
                    break;
                }
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

    public void getNum(){
        String sep=new String("");
        for(char c:types)
            sep+=((c=='+'||c=='*'||c=='('||c==')')?"\\":"")+c+"|";
        sep=sep.substring(0,sep.length()-1);
        String[] exp=expression.split(sep);
        for(String s:exp)
            System.out.println(s);
        /*int i=-1;
        for(String s:exp){
            i++;
            if(s.equals(""))
                continue;
            segInf.add(i,new SegInf());
        }*/
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
    public float value;
    public int id=0;

    public SegInf(byte type,int id){
        this.type=type;
        this.id=id;
    }

    public SegInf(byte type,float value){
        this.type=type;
        this.value=value;
    }
}
