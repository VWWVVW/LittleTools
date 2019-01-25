import obj.ClassExplorer;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class ClassVisualExplorer{
    private ClassExplorer ce=new ClassExplorer(new JPanel());
    private JFrame frm=new JFrame(ce.getName());
    private JButton btn=new JButton("Search");
    private JTextField txt=new JTextField("Type the key words");
    private JTabbedPane tbp=new JTabbedPane(JTabbedPane.TOP,
        JTabbedPane.SCROLL_TAB_LAYOUT);
    private JTable[] tbl=new JTable[3];

    public static void main(String[] args){
        setLookAndFeel();
        ClassVisualExplorer cve=new ClassVisualExplorer();
        cve.setVisible(true);
    }

    public ClassVisualExplorer(){
        tbl[0]=new JTable(rmColumn(ce.cstrctArray,1),
            rmColumn(ce.header,1));
        tbl[1]=new JTable(ce.methodsArray,ce.header);
        tbl[2]=new JTable(rmColumn(ce.fieldsArray,3),
            rmColumn(ce.header,3));
        tbp.add("Constructors",new JScrollPane(tbl[0]));
        tbp.add("Methods",new JScrollPane(tbl[1]));
        tbp.add("Fields",new JScrollPane(tbl[2]));
        tbp.addKeyListener(new overallKeyAdapter());
        txt.addKeyListener(new overallKeyAdapter(){
            @Override
            public void keyReleased(KeyEvent e){
                super.keyReleased(e);
                if(e.getKeyCode()==KeyEvent.VK_ENTER)
                    btn.doClick();
            }
        });
        btn.addKeyListener(new overallKeyAdapter());
        btn.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent e){
                ce.search(txt.getText());
                if(tbp.getTabCount()>3)
                    tbp.removeTabAt(3);
                tbp.add("Search Results",
                    new JScrollPane(
                    new JTable(ce.getSearchArray(),
                    ce.header)));
                tbp.setSelectedIndex(3);
            }
        });
        /*Toolkit tk=Toolkit.getDefaultToolkit();
        tk.addAWTEventListener(new AWTEventListener(){
            @Override
            public void eventDispatched(AWTEvent e){
                if(e.getClass()==KeyEvent.class){
                    KeyEvent ke=(KeyEvent)e;
                    if(ke.getID()==KeyEvent.KEY_RELEASED
                        &&ke.isControlDown()
                        &&ke.getKeyCode()==KeyEvent.VK_F)
                        txt.grabFocus();
                }
            }
        },java.awt.AWTEvent.KEY_EVENT_MASK);*/
        frm.setLayout(new GridBagLayout());
        frm.add(txt,getGBC(0,0,1,1,1,0));
        frm.add(btn,getGBC(1,0,1,1,0,0));
        frm.add(tbp,getGBC(0,1,2,1,1,1));
        frm.setSize(800,600);
        frm.setDefaultCloseOperation(
            WindowConstants.EXIT_ON_CLOSE);
    }

    class overallKeyAdapter extends KeyAdapter{
        @Override
        public void keyReleased(KeyEvent e){
            if(e.isControlDown())
                switch(e.getKeyCode()){
                case KeyEvent.VK_1:
                    tbp.setSelectedIndex(0);
                break;
                case KeyEvent.VK_2:
                    tbp.setSelectedIndex(1);
                break;
                case KeyEvent.VK_3:
                    tbp.setSelectedIndex(2);
                break;
                case KeyEvent.VK_4:
                    try{
                        tbp.setSelectedIndex(3);
                    }catch(Exception exception){
                        System.out.println("Error(Ignored): "
                            +"No \"Tab:Search Results\" yet");
                    }
                break;
                case KeyEvent.VK_F:
                    txt.requestFocus();
                break;
                }
        }
    }

    public void setVisible(boolean isVisible){
        frm.setVisible(isVisible);
    }

    private static String[][] rmColumn(
        final String[][] s,int num){
        if(s.length==0||s[0].length<2||num>=s[0].length||num<0)
            return s;
        String[][] r=new String[s.length][s[0].length-1];
        for(int i=0;i<s[0].length-1;i++)
            for(int j=0;j<s.length;j++)
                r[j][i]=s[j][i<num?i:i+1];
        return r;
    }

    private static String[] rmColumn(final String[] s,int num){
        if(num<0||num>=s.length)
            return s;
        String[] r=new String[s.length-1];
        for(int i=0;i<r.length;i++)
            r[i]=s[i<num?i:i+1];
        return r;
    }

    private static void setLookAndFeel(String name){
        try{
            UIManager.setLookAndFeel(name);
        }catch(Exception e){
            System.out.println("Error: LookAndFeel file \""
                +name+"\" not found");
        }
    }

    public static void setLookAndFeel(){
        String str,name;
        name=UIManager.getSystemLookAndFeelClassName();
        for(UIManager.LookAndFeelInfo i
            :UIManager.getInstalledLookAndFeels()){
            str=i.toString();
            if(str.indexOf("gtk")!=-1)
                name=str.substring(str.lastIndexOf(" ")+1,
                    str.length()-1);
        }
        setLookAndFeel(name);
    }

    private static final GridBagConstraints getGBC(int x,
        int y,int width,int height,int weightX,int weightY){
        GridBagConstraints gbc=new GridBagConstraints();
        gbc.gridx=x;
        gbc.gridy=y;
        gbc.gridwidth=width;
        gbc.gridheight=height;
        gbc.insets=new Insets(0,0,0,0);
        gbc.fill=GridBagConstraints.BOTH;
        gbc.weightx=weightX;
        gbc.weighty=weightY;
        return gbc;
    }
}
