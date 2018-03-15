<link  rel="stylesheet" href="css_formulario/formcss.css" />
    <form  class="contact_form" action="?pagina=form" method="post" id="contact_form" runat="server">
        <ul class="subrayado">
        <li >
            <h2>Inscripción Ciclo Lectivo: 
              <?php 
              $fecha = date('Y');
              $nuevafecha = strtotime ( '+1 year' , strtotime ( $fecha ) ) ;
              $nuevafecha = date ( 'Y' , $nuevafecha );
              echo $nuevafecha;
              ?>

            </h2> 
            </li>
        </ul>
        <div>
            <ul class="subrayado2">
                <li>
                    <label for="name">Nombre:</label>
                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                    <input type="text" name="nombre" placeholder="Juan Cruz" required />
                </li>
                 <li>
                    <label for="apellido">Apellido:</label>
                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                    <input type="text" name="apellido" placeholder="Dillon" required />
                </li>
                 <li>
                    <label for="dni">D.N.I:</label>
                    <i class="fa fa-id-card-o" aria-hidden="true"></i>
                    <input type="number" name="dni"  max="99999999" placeholder="11.111.111" required />

                </li>
               
                  <li>
                    <label for="email">Email:</label>
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <input type="email" name="email" placeholder="e.t36d.e15@bue.edu.ar" required />
                    <span class="form_hint">Formato correcto: "nombre@dominio.com"</span>
                </li>
                <li>
                    <label for="telefono">Celular:</label>
                       <i class="fa fa-mobile" aria-hidden="true"></i> 
                    <input type="number" name="tel"  max="9999999999" name="telefono" placeholder="15-1111-1111" required/>
                    <span class="form_hint">Formato correcto: "15-1111-1111"</span>
                </li>
                <li>
                    <label for="direccion">Domicilio:</label>
                    <i class="fa fa-map" aria-hidden="true"></i>
                    <input type="text" name="direccion"  placeholder="calle 1111" required/>
                </li>
                <li>
                    <table>
                    <tr>
                    <td>
                        <div class="Sexo">
                             <p class="letrasexo">Sexo<br/></p>
                      <input type="radio" name="sexo" value="Masculino" checked="checked"/> Masculino <i class="fa fa-male" aria-hidden="true"></i><br/>
                        <input type="radio" name="sexo" value="Femenino"/> Femenino <i class="fa fa-female" aria-hidden="true"></i>
                        </div>
                          </td>
                          <div class="subrayado3">
                              Interesado en: <br/>
                             <input type="radio" name="orientacion" value="Computación" checked="checked">
                               Computación <i class="fa fa-desktop" aria-hidden="true"></i> <br/>
                                  <input type="radio" name="orientacion" value="Construcciones"/> 
                                     Construcciones <i class="fa fa-building" aria-hidden="true"></i><br/>
                          </div>     
                    </tr>
                    </table>
                </li>
                <li>
                    <label for="message">Consulta:</label>
                    <textarea name="consultas" cols="40" rows="6"></textarea>
                </li>
                    <li class="mensajes">
                    <button class="submit" type="submit">Enviar mensaje</button>
                </li>
                
            </ul>
        </div>
         <style type="text/css"> 
                    .contact_form i{
                       font-size: 20px;
                       width: 25px;
                       height: 25px;
                       border-radius: 50%;
                       line-height: 30px;
                       margin: 10px 15px;
                       vertical-align: middle;
                       line-height: 15px;
                    }
                     </style>
    </form>