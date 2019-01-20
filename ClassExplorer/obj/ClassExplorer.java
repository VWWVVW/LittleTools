package obj;

public class ClassExplorer{
    private Class c;
    public final String[] header=
        {"Modifiers","Type","Name","Args"};
    public final Object[] constructors,methods,fields;
    //Make sure that all of the var defined below are[x][4]
    public String[][] cstrctArray,
        methodsArray,fieldsArray,searchArray;
    private String searchKey;
//Constructors
    public ClassExplorer(Object o){
        c=o.getClass();
        constructors=c.getConstructors();
        methods=c.getMethods();
        fields=c.getFields();
        initArray();
    }
//Array Methods
    private void initArray(){
        initArrayConstructors();
        initArrayMethods();
        initArrayFields();
    }

    private void initArrayConstructors(){
        cstrctArray=new String[constructors.length][4];
        String str,args,others;
        String[] splitted;
        for(int i=0;i<constructors.length;i++){
            str=constructors[i].toString();
            args=str.substring(
                str.indexOf("(")+1,str.indexOf(")"));
            others=str.substring(0,str.lastIndexOf(args));
            splitted=others.split(" ");
            cstrctArray[i][1]="";
            cstrctArray[i][3]=simplify(args).equals("")?
                "void":simplify(args);;
            cstrctArray[i][2]=getName();
            cstrctArray[i][0]=others.substring(
                0,others.indexOf(splitted[splitted.length-1]));
        }
    }

    private void initArrayMethods(){
        methodsArray=new String[methods.length][4];
        String str,args,others;
        String[] splitted;
        for(int i=0;i<methods.length;i++){
            str=methods[i].toString();
            args=str.substring(
                str.indexOf("(")+1,str.indexOf(")"));
            others=str.substring(0,str.lastIndexOf("("));
            splitted=others.split(" ");
            methodsArray[i][3]=simplify(args).equals("")?
                "void":simplify(args);
            methodsArray[i][2]=simplify(
                splitted[splitted.length-1]);
            methodsArray[i][1]=simplify(
                splitted[splitted.length-2]);
            methodsArray[i][0]=others.substring(0,
                others.indexOf(splitted[splitted.length-2]));
        }
    }

    private void initArrayFields(){
        fieldsArray=new String[fields.length][4];
        String str;
        String[] splitted;
        for(int i=0;i<fields.length;i++){
            str=fields[i].toString();
            splitted=str.split(" ");
            fieldsArray[i][3]="";
            fieldsArray[i][2]=simplify(
                splitted[splitted.length-1]);
            fieldsArray[i][1]=simplify(
                splitted[splitted.length-2]);
            fieldsArray[i][0]=simplify(str.substring(0,
                str.indexOf(splitted[splitted.length-2])
                -1));
        }
    }
//Search Methods
    public void search(String key){
        searchKey=key;
        searchArray=new String[0][4];
        String toSearch="";
        for(int i=0;i<cstrctArray.length;i++){
            toSearch="";
            for(int j=0;j<4;j++)
                toSearch+=cstrctArray[i][j];
            if(isMatch(toSearch,key))
                searchArray=cpString(
                    searchArray,cstrctArray,i);
        }
        for(int i=0;i<methodsArray.length;i++){
            toSearch="";
            for(int j=0;j<4;j++)
                toSearch+=methodsArray[i][j];
            if(isMatch(toSearch,key))
                searchArray=cpString(
                    searchArray,methodsArray,i);
        }
        for(int i=0;i<fieldsArray.length;i++){
            toSearch="";
            for(int j=0;j<4;j++)
                toSearch+=fieldsArray[i][j];
            if(isMatch(toSearch,key))
                searchArray=cpString(
                    searchArray,fieldsArray,i);
        }
    }

    public final String getSearchKey(){
        return searchKey;
    }

    public final String[][] getSearchArray(){
        return searchArray;
    }
//Others
    public String getName(){
        return c.getName();
    }

    private String simplify(final String s){
        return s.replace("java.lang.","")
            .replace(getName(),"")
            .replace("(","")
            .replace(")","");
    }
    //to&from are both String[x][4]
    private String[][] cpString(String[][] to,
        String[][] from,int index){
        if(from.length==0||from[0].length!=4
            ||index>=from.length)
            System.out.println("Error in coping string");
        String[][] str=new String[to.length+1][4];
        for(int i=0;i<to.length;i++)
            for(int j=0;j<4;j++)
                str[i][j]=to[i][j];
        for(int i=0;i<4;i++)
            str[to.length][i]=from[index][i];
        return str;
    }

    private boolean isMatch(final String str,final String sub){
        String[] keys=sub.split(" ");
        for(String key:keys)
            if(str.toUpperCase().indexOf(key.toUpperCase())==-1)
                return false;
        return true;
    }
}
