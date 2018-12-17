package servlet;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ImageServlet extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{
        BufferedImage bi=new BufferedImage(68, 22, BufferedImage.TYPE_INT_RGB);
        Graphics g=bi.getGraphics();//��ȡ����
        Color c=new Color(200,150,255);//��ɫ
        g.setColor(c);
        g.fillRect(0, 0, 68, 22);//��

        char[] ch="QWERTYUIOPASDFGHJKLZXCVBNM1234567890".toCharArray();
        //��ȡ�ĸ��ַ�
        Random r=new Random();
        int len=ch.length,index;//���÷�Χ
        StringBuffer sb=new StringBuffer();
        for (int i = 0; i <4; i++) {
            index=r.nextInt(len);
            g.setColor(new Color(r.nextInt(88),r.nextInt(188),r.nextInt(255)));//���ַ��������ɫ��
            g.drawString(ch[index]+"",(i*15)+3,18);//�ַ�ת�ַ���  ���ַ�
            sb.append(ch[index]);
        }//ѭ���Ĵα����Ĵ�
        request.getSession().setAttribute("piccode", sb.toString());///�ַ����浽session�Ҫ������֤
        ImageIO.write(bi, "JPG",response.getOutputStream());
    }
}