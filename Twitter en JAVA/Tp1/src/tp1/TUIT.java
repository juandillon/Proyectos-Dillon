package tp1;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Scanner;
import java.util.StringTokenizer;

import javax.swing.JOptionPane;

public class TUIT {
	public TUIT(){
	}
	private String tweet, usuario1;
	public void settuitt(String tu, String us) {
		this.tweet = tu;
		this.usuario1 = us;
	}
	public int tuittear(){
		StringTokenizer st = new StringTokenizer(tweet);
		return st.countTokens();
	}
	public String gettuit2(){
		return this.tweet;
	}
	public void buscartuitpersona(){
		File archivo = new File("datos.txt");
		Scanner s = null;
		String b[] = new String[200];
		int cont=0, i=0;
		try {
			s = new Scanner(archivo);
			JOptionPane.showMessageDialog(null, "... Leyendo tuits del usuario @" + this.usuario1 +  "...");
			while (s.hasNextLine()) {
				 String linea = s.nextLine();
				 boolean r = linea.endsWith(this.usuario1);
					String linea2;
					if (r = true) {
						linea2 = s.nextLine();
						b[i]=linea2;
						cont++;
							JOptionPane.showMessageDialog(null, b[i]);
					}
					i++;	
			}
	
		
		} 
		catch (Exception ex) {
			System.out.println("Mensaje: " + ex.getMessage());
		} 
		finally {
			try {
				if (s != null)
					s.close();
			} catch (Exception ex2) {
				System.out.println("Mensaje 2: " + ex2.getMessage());
			}
		}
		if(cont==0){
			JOptionPane.showMessageDialog(null, "No hay tuits del usuario @" + this.usuario1 +  "...");
		}
	}
	
}