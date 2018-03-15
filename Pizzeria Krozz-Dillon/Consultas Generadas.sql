use Krozz;

/*-	Listar cajeros que atendieron al cliente “Francisco González”. */
select c.*,CA.*  from cajero CA, cliente C where CA.idEmpleado=C.cajero_idEmpleado and CA.NyA="Fernando Gonzalez";
/*Sentencia con Join*/
select cajero.idEmpleado,NyA, cliente.nombre,telefono,Direccion,prov,codigo from cliente join cajero on cajero.idEmpleado=Cliente.cajero_idEmpleado where cajero.NyA="Fernando Gonzalez";


/*Listar envios realizados por el cajero "Ana Frank".*/
select CA.*, E.* from cajero CA, Envío E, cajero_has_Envío CAE where CA.idEmpleado=CAE.cajero_idEmpleado and E.Nro_envio=CAE.`Envío_Nro envio` and CA.NyA="Ana Frank";
/*Sentencia con Join*/
select CA.*, E.* from cajero_has_envío CAE join cajero CA on CAE.cajero_idEmpleado=ca.idEmpleado join Envío E on CAE.`Envío_Nro envio`= E.Nro_envio and CA.NyA="Ana Frank";  


/*Traer productos pedido 1.*/
select P.*,PR.* from Pedido P, Productos PR where P.idPedido=PR.Pedido_idPedido and idPedido= 1;
/*Sentencia con Join*/
select P.*, PR.* from Pedido P join Productos PR on p.idPedido=pr.Pedido_idPedido and idPedido=1;


/*Traer pedidos cliente Pablo.*/
select C.*, P.* from Cliente C, pedido P, Cliente_has_Pedido CP where c.codigo=CP.cliente_codigo and P.idPedido=CP.Pedido_idPedido and C.nombre="Pablo";
/*Sentencia con Join*/
select C.*, P.* from Cliente_has_Pedido CP join cliente C on c.codigo=CP.cliente_codigo join pedido P on p.idPedido=CP.Pedido_idPedido and C.nombre="Pablo";


/*Listar los clientes del litoral("Salta", "Buenos Aires", "Cordoba")*/
select c.*, p.* from cliente C, provincia P where c.prov=p.id_prov and (p.nombre="Salta" or p.nombre="Buenos Aires" or p.nombre="Cordoba");


/*Pedidos realizados en la Patagonia ("Chubut","Neuquen","La Pampa", "Rio negro", "Santa Cruz") menos tierra del fuego.*/
select p.*, pr.* from pedido P, provincia PR where p.idpedido=pr.id_prov and pr.nombre in ("Chubut","Neuquen","La Pampa", "Rio negro", "Santa Cruz");


/*Traer cantidad de productos del pedido 2.*/
select count(*) from productos where Pedido_idPedido=2;


/*Traer promedio de pedidos de un repartidor 12.*/
select avg(Nro_Envio) from pedido join productos on  idPedido=idProductos join envío_has_productos ehp on idProductos=Productos_idProductos 
join envío on envío.Nro_envio =  ehp.envío_Nroenvio join repartidor on Nro_Repartidor=Repartidor_Nro_Repartidor where Nro_Repartidor=12;


/*Traer el ultimo pedido del cliente Jose.*/
select max(fecha) as ultimoPedido from cliente_has_pedido chp join pedido on Pedido_idPedido=idPedido join cliente on Cliente_codigo=cliente.codigo where cliente.nombre="Jose";


/*Traer el primer pedido en tucuman.*/
select min(fecha) as primerPedido from cliente_has_pedido chp join pedido on Pedido_idPedido=idPedido join cliente on Cliente_codigo=cliente.codigo join provincia on id_prov=prov  where prov = 3;


/*Traer total de toda la facturacion.*/
select sum(importe) as factura from pedido;


/*Traer total de facturacion de la patagonia ("Chubut", "Neuquen", "La Pampa", "Rio Negro").*/
select sum(importe) as Factpatagonia from cliente_has_pedido join pedido on idPedido=Pedido_idPedido join cliente on codigo=Cliente_codigo join provincia p on id_prov=prov where p.nombre in ("Chubut", "Neuquen", "La Pampa", "Rio Negro");


/*Recuperar pedido mas caro del cliente 1.*/
select max(importe) as PedidomasCaro from cliente_has_pedido join pedido on idPedido=Pedido_idPedido join cliente on codigo=Cliente_codigo where codigo= 1;


/*View Recuperar pedido mas caro del cliente 1.*/
/*Se declara una tabla nueva que va a contener los valores solicitados*/
CREATE  OR REPLACE VIEW `vwpedidomascaro` AS 
select max(importe) as PedidomasCaro from cliente_has_pedido join pedido on idPedido=Pedido_idPedido join cliente on codigo=Cliente_codigo where codigo= 1;

/*Se muestra la View*/
select * from vwpedidomascaro;



/*Traer cantidad de clientes por provincia*/
select count(*) clientes, p.Nombre from cliente c, provincia p where c.prov=p.id_prov group by(p.Nombre);


/*Traer pedido mas caro por cliente*/
select max(importe), Pedido_idPedido as pedidomascaroxcliente, c.Nombre from cliente_has_pedido chp join cliente c on c.codigo=chp.Cliente_codigo 
join pedido p on p.idPedido=chp.Pedido_idPedido group by c.Nombre;
create view vwPedidoCliente as select * from cliente_has_pedido chp join cliente c on c.codigo=chp.Cliente_codigo 
join pedido p on p.idPedido=chp.Pedido_idPedido group by c.Nombre;
select * from vwPedidoCliente;
select max(importe) Importe, Nombre from(select count(*), v.Nombre from vwPedidoCliente v group by v.codigo) as PedidomCaro;


/*Cantidad de productos por repartidor*/
select count(*) Productos,   sum(p.Cantidad) Cantidad,Nro_envio as Numero_Envio, r.Nombre, Nro_Repartidor from envío_has_productos ehp join productos p on ehp.Productos_idProductos=p.idProductos join envío e on e.Nro_envio=ehp.Envío_Nroenvio join
repartidor r on r.Nro_Repartidor=e.Repartidor_Nro_Repartidor group by e.Repartidor_Nro_Repartidor;
