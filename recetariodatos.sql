USE RECETARIO_app;

INSERT INTO ingrediente VALUES 
 (1, "Tomate", "Fruta generalmente usada como verdura, es refrescante, digestiva rica en fibra y baja en calorías"),
 (2, "Aguacate", "Fruta generalmente usada como verdura, de consistencia tierna y cremosa, altamente calorica y con muchos antioxidantes"),
 (3, "Cebolla", " Se caracteriza por ser antiinflamatorio y antioxidante, protege el corazón y se puede comer tanto cruda como cocica"),
 (4, "Ajo", "tiene propiedades antisépticas, fungicidas, bactericidas y depurativas, debido a que contiene un compuesto llamado alicina. Al ser versatil se incluye en muchas recetas"),
 (5, "Arvejas", "Leguminosa rica en proteínas y carbohidratos así como baja en grasas"),
 (6, "Berenjena", "Una de las hortalizas más populares y consumidas en el mundo. Se caracteriza por su color morado oscuro. Es un excelente alimento para perder peso y grasa abdominal debido a sus propiedades depurativas y desintoxicantes."),
 (7, "Brocoli", "Alimento antioxidante, depurativo, antiinflamatorio y saciante. Esta hortaliza previene el cáncer."),
 (8, "Espinaca", "Hojas comestibles grandes de color verde oscuro. Este alimento se caracteriza por ser un potente antiinflamatorio. Ayuda a mejorar dolencias como la artritis."),
 (9, "Lechuga", "Contiene propiedades anticancerígenas, al ser rica en sulforafano. Asimismo por contener lactucina tiene propiedades sedantes y tranquilizantes que ayudan a calmar los nervios."),
 (10, "Brocoli", "Alimento antioxidante, depurativo, antiinflamatorio y saciante. Esta hortaliza previene el cáncer."),
 (11, "Champiñón", "Especie de hongo basidiomiceto de la familia Agaricales. Contiene alta dosis de fibra. Es ideal para combatir la diabetes."),
 (12, "Papa", "alimento, muy nutritivo que desempeña funciones energéticas debido a su alto contenido en almidón así como funciones reguladoras del organismo"),
 (13, "Bulgur", "cereal integral muy rico en fibra, conocido como trigo árabe"),
 (14, "Albahaca", "hierba aromática que se emplea tanto con fines culinarios como medicinales. Sirve para aliviar el malestar estomacal y calmar los nervios, y puede ayudar a combatir el insomnio y la fatiga física y mental.");

INSERT INTO proteina VALUES 
 (1, "Jamón"),
 (2, "Pollo"),
 (3, "Atún"),
 (4, "Huevo"),
 (5, "Queso fresco");

INSERT INTO ensalada VALUES
 (1, "Cesar", "La ensalada César fue inventada por un italoamericano en su restaurante, Ceasar’s Restaurante-Bar, en Tijuana, México. Ceasar Cardini creó este plato en un intento de utilizar los restos de comida durante un día muy concurrido en su local. La versión original de la ensalada llevaba lechuga romana, queso parmesano y yema de huevo crudo, pero hoy en día se suele hacer con cubos de pan tostado, tocineta crujiente y un aderezo cremoso que muchas veces lleva anchoas."), 
 (2, "primavera", "Una colorida ensalada de vegetales, ideal para acompañar carnes y muy popular para la cena navideña."), 
 (3, "rusa", "La ensalada rusa no fue creada por los rusos, sino por un chef francés con origen belga, Lucien Olivier, que servía su invento en su restaurante «El Ermitage», en Moscú. Se ha convertido en un alimento básico en muchos países de América Latina y Europa, España incluido, donde es muy común encontrarte la ensaladilla rusa como tapa del día. Existen muchas recetas sobre esta elaboración, pero lo cierto es que, cada vez más, en los restaurantes podemos encontrar este plato elaborado solo con patatas, atún y, en algunos casos, zanahoria. Otro ingrediente imprescindible de esta elaboración es la mayonesa."), 
 (4, "tabule", "El tabulé es uno de los platos más importantes de los países levantinos, en concreto Líbano y Siria, donde se suele servir como entrante. Es una receta saludable, ya que uno de sus ingredientes principales es el bulgur, un cereal integral muy rico en fibra. Al tabulé también se añade hortalizas de verano como perejil, hierbabuena, tomate y cebolla. El aderezo está compuesto por aceite de oliva, zumo de limón, sal y pimienta."), 
 (5, "waldorf", "La ensalada Waldorf recibe su nombre del hotel estadounidense donde se inventó, el Hotel Waldorf Astoria de Nueva York. Se le atribuye la receta al maitre del local a finales del siglo XIX, Oscar Tschirky. Es un plato muy sencillo, su receta original solo lleva manzana, apio picado y mayonesa. Sin embargo, hoy en día se suele añadir nueces y lechuga."), 
 (6, "capresse", "Es un plato de elaboración muy sencilla en el que solo se usan ingredientes originarios de la zona. Además, destacan los colores de la bandera del país: rojo, verde y blanco. Para hacer una ensalada caprese solo se necesita tomate fresco, queso mozzarella fresco, albahaca fresca, aceite de oliva virgen extra, sal y pimienta negra. También se suele añadir vinagre de balsámico para aportar más acidez."); 

INSERT INTO usuario VALUES 
(1, "Elizabeth", "e.hortua@gmail.com", "121212"),
(2, "Gabriel V", "vegagabriel@gmail.com", "metalfury"),
(3, "Frey ", "freyderson@hotmail.com", "danteychikis"),
(4, "Camila", "camila_96@gmail.com", "camilita123"); 

INSERT INTO vitamina VALUES 
(1, "A", "ayuda a la formación y mantenimiento de dientes, tejidos óseos y blandos, membranas mucosas y piel sanos."),
(2, "C", "también llamada ácido ascórbico, es un antioxidante que favorece los dientes y encías sanos. Esta vitamina ayuda al cuerpo a absorber el hierro y a mantener el tejido saludable. También es esencial para la cicatrización de heridas."),
(3, "D", "también se conoce como la vitamina del sol debido a que el cuerpo la produce luego de la exposición a la luz solar. De 10 a 15 minutos de exposición al sol 3 veces a la semana son suficientes para producir los requerimientos corporales de esta vitamina para la mayoría de las personas y en la mayoría de las latitudes. Es muy difícil obtener suficiente vitamina D únicamente de fuentes alimenticias. Esta vitamina le ayuda al cuerpo a absorber el calcio."),
(4, "E", "es un antioxidante, conocida también como tocoferol. Ayuda al cuerpo a formar glóbulos rojos y a utilizar la vitamina K."),
(5, "K", "es necesaria porque sin ella, la sangre no se solidificaría (coagularía). Algunos estudios sugieren que es importante para la salud de los huesos."),
(6, "B1", "ayuda a las células corporales a convertir los carbohidratos en energía. Obtener suficientes carbohidratos es muy importante durante el embarazo y la lactancia. También es esencial para el funcionamiento del corazón y las neuronas sanas."),
(7, "B2", " funciona en conjunto con las otras vitaminas del complejo B. Es importante para el crecimiento corporal y la producción de glóbulos rojos."),
(8, "B3", "La niacina es una vitamina del complejo B que ayuda a mantener saludable la piel y los nervios. En dosis altas también tiene efectos que reducen el colesterol."),
(9, "B6", " también se denomina piridoxina. La vitamina B6 ayuda a la formación de glóbulos rojos y al mantenimiento de la función cerebral. Esta vitamina también juega un papel importante en las proteínas que participan de muchas reacciones químicas en el cuerpo. Mientras más proteína coma, más piridoxina requiere su cuerpo."),
(10, "B12", "al igual que las otras vitaminas del complejo B, es importante para el metabolismo. También ayuda a la formación de glóbulos rojos y al mantenimiento del sistema nervioso central."),
(11, "Folato/Ácido Fólico", "actúa con la vitamina B12 para ayudar en la formación de glóbulos rojos. Es necesario para la producción del ADN, que controla el crecimiento tisular y la función celular."),
(12, "B5", "es esencial para el metabolismo de los alimentos. También desempeña un papel en la producción de hormonas y colesterol.");

INSERT INTO listaensaladaingrediente VALUES 
 (1, 1, 9),
 (2, 2, 9),
 (3, 2, 1),
 (4, 2, 2),
 (5, 2, 3),
 (6, 3, 5),
 (7, 3, 12),
 (8, 4, 1),
 (9, 4, 3),
 (10, 4, 13),
 (11, 6, 1),
 (12, 6, 14);
 
 
 INSERT INTO listaensaladaproteina VALUES
 (1, 1, 2),
 (2, 1, 5),
 (3, 2, 1),
 (4, 3, 3),
 (5, 6, 5);

INSERT INTO listaingredientevitamina VALUES
  (1, 1, 2), 
  (2, 1, 3), 
  (3, 1, 4),
  (4, 1, 10), 
  (5, 2, 2), 
  (6, 2, 9),
  (7, 2, 10), 
  (8, 2, 3), 
  (9, 3, 2),
  (10, 3, 3), 
  (11, 3, 9), 
  (12, 3, 10),
  (13, 4, 9),
  (14, 4, 8),
  (15, 4, 12),
  (16, 4, 2),
  (17, 5, 2),
  (18, 5, 9),
  (19, 5, 10),
  (20, 5, 3),
  (21, 6, 2),
  (22, 6, 9),
  (23, 6, 3),
  (24, 6, 10),
  (25, 7, 2),
  (26, 7, 12),
  (27, 7, 4),
  (28, 7, 8),
  (29, 7, 9),
  (30, 7, 6),
  (31, 7, 5),
  (32, 8, 5),
  (33, 8, 1),
  (34, 8, 2),
  (35, 8, 7),
  (36, 8, 4),
  (37, 9, 5),
  (38, 9, 2),
  (39, 9, 8),
  (40, 9, 4),
  (41, 9, 9),
  (42, 9, 7),
  (43, 9, 12),
  (44, 10, 2),
  (45, 10, 4),
  (46, 10, 8),
  (47, 11, 7),
  (48, 11, 8),
  (49, 11, 11),
  (50, 12, 2),
  (51, 12, 8),
  (52, 12, 12),
  (53, 13, 1),
  (54, 13, 10),
  (55, 13, 4),
  (56, 13, 5),
  (57, 14, 2),
  (58, 14, 9),
  (59, 14, 3),
  (60, 14, 10);

INSERT INTO listausuarioensalada VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 2, 2),
  (4, 2, 6),
  (5, 2, 5),
  (6, 3, 1),
  (7, 4, 2),
  (8, 4, 3),
  (9, 4, 5);