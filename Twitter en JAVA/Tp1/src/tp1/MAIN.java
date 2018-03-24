package tp1;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.Scanner;

import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

public class MAIN {
	public static void main(String[] args){
		TUIT tuit = new TUIT();
		BOT bot=new BOT();
		int op;
		int respuesta1=1;
		int respuesta2;
		String tuit1="", usuario1 = null, main="";
		 final ImageIcon icon2 = new ImageIcon("main.png");
		JOptionPane.showMessageDialog(null, "Bienvenido a ronronear V1.0 " + System.getProperty("line.separator") + "Pulse aceptar para iniciar el programa", "Main", 0, icon2);
		try{
		do{
			main=(
					"1- Tuitear"  + 
					System.getProperty("line.separator") + "2- Leer tuits de cierta persona" + 
					System.getProperty("line.separator") + "3- Tuits sin respuesta" + 
					System.getProperty("line.separator") + "4- Borrar Datos" + System.getProperty("line.separator") + "5-Salir"
					);
			 final ImageIcon icon = new ImageIcon("opciones.png");
			 op=Integer.parseInt((String)JOptionPane.showInputDialog(null,main,"Menu",JOptionPane.QUESTION_MESSAGE,icon,null,""));
				switch(op){
				case 1:
					 final ImageIcon usuarioi = new ImageIcon("usuario.png");
					 usuario1=(String)JOptionPane.showInputDialog(null,"Ingrese usuario: ","Usuario",JOptionPane.QUESTION_MESSAGE,usuarioi ,null,"");
					 int contador = 0;
					 
						 contador=0;
						 do{
							 if(usuario1.contains(" ")){
							 JOptionPane.showMessageDialog(null, "No se admiten espacios, ingrese usuario nuevamente: ");
							 usuario1=(String)JOptionPane.showInputDialog(null,"Ingrese usuario: ","Usuario",JOptionPane.QUESTION_MESSAGE,usuarioi ,null,"");
						     contador++;
						     }
						 }while(contador==1);
						 
					
						 System.out.println("El usuario que se va a tomar es: @" + usuario1);
							do{
							 final ImageIcon icono3 = new ImageIcon("tuit.png");
							tuit1=(String)JOptionPane.showInputDialog(null,"Ingrese tuit(max. 15 palabras): ","Tuits",JOptionPane.QUESTION_MESSAGE,icono3 ,null,"");
							tuit.settuitt(tuit1, usuario1);
							if(tuit.tuittear()>0 && tuit.tuittear()<=15){
								bot.setp(usuario1, tuit.gettuit2());
								bot.terminator();
								if(bot.benito()==false && bot.wally()==false){
									bot.escribirnorespondidos();
								}
							}
							else{
								JOptionPane.showMessageDialog(null, "Ingrese tuit nuevamente (Error)");
							}
							}while(tuit.tuittear()<0 || tuit.tuittear()>15);				
																	
					break;
				case 2:
					 final ImageIcon iconos = new ImageIcon("usuario.png");
						usuario1=(String)JOptionPane.showInputDialog(null,"Ingrese usuario: ","Usuario busqueda",JOptionPane.QUESTION_MESSAGE,iconos ,null,"");					
						if(usuario1==null){
							JOptionPane.showMessageDialog(null, "Error al ingresar el usuario");
						}
						else{
							tuit.settuitt(tuit1, usuario1);
							tuit.buscartuitpersona();
						}
								
					break;
				case 3:
					bot.mensnrespondido();
					break;
				case 4:
					 respuesta2=JOptionPane.showOptionDialog(null, "Borrar datos ", "Borrar", JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE, null,
								new Object[]{"Aceptar", "Cancelar"}, "aceptar");
					 if(respuesta2==0){
							JOptionPane.showMessageDialog(null, "Datos borrados");
					 try{
						BufferedWriter s=new BufferedWriter(new FileWriter("datos.txt"));
						s.write("");
						s.close();
					 }
					 catch(Exception e){
						 System.out.println("Error al borrar datos");
					 }
					 try{
							BufferedWriter ex=new BufferedWriter(new FileWriter("tuitsblacks.txt"));
							ex.write("");
							ex.close();
						 }
						 catch(Exception ex){
							 System.out.println("Error al borrar datos");
						 }
					 try{
							BufferedWriter p=new BufferedWriter(new FileWriter("tuitsinrespuesta.txt"));
							p.write("");
							p.close();
						 }
						 catch(Exception ex1){
							 System.out.println("Error al borrar datos");
						 }
					 }
					 else{
							JOptionPane.showMessageDialog(null, " Sigue con sus datos");
					 }
					break;
					
				case 5:
					System.exit(0);
					break;
					default:
							JOptionPane.showMessageDialog(null, "Ingrese opcion valida");
						break;
				}
				        respuesta1=JOptionPane.showOptionDialog(null, "Repetir el programa? ", "Repeticion", JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE, null,
						new Object[]{"Aceptar", "Cancelar"}, "aceptar"
						);
		}while(respuesta1==0);	
		}
		catch(Exception ex)
		{
			JOptionPane.showMessageDialog(null, "Ingreso un caracter o presiono el boton cancelar. Hasta luego!");
			System.exit(0);
		}
	}
}
