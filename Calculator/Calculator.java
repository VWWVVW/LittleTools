import java.util.ArrayList;
import java.util.Scanner;

public class Calculator{
    public static final char[] types={'(',')','+','-','*','/','^','v'};
    public String expression;
    public ArrayList<SegInf> segInf;

    public static void main(String[] args){
        Calculator c=new Calculator("(1+2)/((3-4)*5/6)");
        c.decode();
        c.printSegInf();
    }

    public Calculator(){
        this.expression=new String("");
    }

    public Calculator(String expression){
        this.expression=expression;
    }

    public void decode(){
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
        boolean hasParen=false;
        for(SegInf s:segInf)
            if(s.type==0)
                hasParen=true;
        if(!hasParen)
            return;
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
        int i=-1;
        for(String s:exp){
            i++;
            if(s.equals(""))
                continue;
            segInf.add(i++,new SegInf((byte)8,
                (float)Float.parseFloat(s)));
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
    //Only be used to debug
    protected void printSegInf(){
        String str;
        System.out.print("\nExp   :");
        for(SegInf s:segInf){
            str=Float.toString(s.value);
            if(s.type<8)
                str=Character.toString(types[s.type]);
            System.out.print(str+"\t");
        }
        System.out.print("\nType  :");
        for(SegInf s:segInf)
            System.out.print(s.type+"\t");
        System.out.print("\nId    :");
        for(SegInf s:segInf)
            System.out.print(s.id+"\t");
        System.out.print("\nValue :");
        for(SegInf s:segInf)
            System.out.print(s.value+"\t");
        System.out.print("\n");
    }
}

class SegInf{
    public byte type;
    public float value=0;
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